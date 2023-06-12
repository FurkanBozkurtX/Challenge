<?php 
class Report{
   public function Dopt($Level){
	   $List=DB::getRow("SELECT *,ROUND(SUM(t.t_duration / 45)) as or_duration,sum(t.t_duration) as total_duration FROM developer as d INNER JOIN task as t ON d.d_level=t.t_level where t.t_level=?",array($Level));
	   $OrDuration=$List->total_duration;
	   $UpDev=DB::exec("UPDATE developer set d_total_task_h=? where d_level=?",array($OrDuration,$Level));	  
	   return $List;
   }
   public function Dev(){
	   $Dlist=DB::get("select * from developer");
	   return $Dlist;
   }
   public function MinTaskTime(){
	   $MinTime=DB::getRow("SELECT *,MIN(d_total_task_h) as d_total_task_h FROM developer");
	   $TimeData=array("time"=>$MinTime->d_total_task_h);
	   return $TimeData;
   }
   public function RTaskTime(){
	   $MinTimeData=$this->MinTaskTime();
	   $MinTime=$MinTimeData['time'];
	   $LCheck=DB::getRow("SELECT *,MIN(d_total_task_h) as d_total_task_h FROM developer where d_total_task_h=?",array($MinTime));
	   $RTime=DB::exec("UPDATE developer SET d_total_task_h=d_total_task_h - $MinTime ORDER BY  d_total_task_h ASC ");
	   $LData=array("level"=>$LCheck->d_level);
       return $LData;
   }
   
   public function TimeR($id){
	   $Tlist=DB::getRow("select d_time_x from developer where d_id=?",array($id));
	   return $Tlist->d_time_x;
   }
   public function DCount(){
	   $H=$this->MinTaskTime();
	   $Lopt=$this->RTaskTime();
	   $Llist=$Lopt['level']-1;
	   $Lquery=DB::getRow("select * from developer where d_level >= ? and d_total_task_h=0",array($Llist));
	   $Lquery_check=DB::getRow("select * from developer where d_level = ? ",array($Llist));
	   $Mfg=$Lquery_check->d_total_task_h;
	   $b=json_decode($Lquery->d_time_x,true);
	   $NList= round($b[$Llist] * $Mfg /60);
	   $B=round($Mfg - $NList) ;
	   $Ex=round($B/2);
	   $HTime=DB::exec("UPDATE developer SET d_total_task_h=d_total_task_h - $Mfg where  d_level = $Llist");
	   $ETime=DB::exec("UPDATE developer SET d_total_task_h=d_total_task_h - $Ex where  d_level < $Llist");
	   
	   $Nm=DB::getRow("SELECT sum(d_total_task_h - 9) as t_kal FROM developer");
	   $TotalM=round($Ex+$Nm->t_kal / 4);
	   $Ftime=DB::exec("UPDATE developer SET d_total_task_h=0");
	   return round($H['time']/45)." Hafta "." ".round($TotalM /9)." Gün ";
   }
   
   
}