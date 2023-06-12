<?php 
interface Task{
     public function GTask($Url,$Type);
}

 class Service implements Task {
    public function GTask($Url,$Type){
		
		$Uget=file_get_contents($Url);
		$Purl=json_decode($Uget,true);
		switch($Type){
			case "Provider1":
			$this->RTask($Purl);
			break;
			case "Provider2":
			$this->PTask($Purl);
			break;
			default:
			$Adp=new TaskAdapter();
			$Adp->GPattern($Purl);
			break;			
		}
			
	}
	public function RTask($GD){
		    $Table="task";
			$Ttask=count($GD);
			for ($i=0;$i<$Ttask;$i++){
				$Arr=$GD[$i];
				$Tname=array_keys($Arr)[0];
				$Level=$Arr[$Tname]['level'];
				$Estimated_duration=$Arr[$Tname]['estimated_duration'];
				$TData=array($Tname,$Level,$Estimated_duration);
				$this->ITask($Table,$TData);
				
		    }
	}
	public function PTask($GD){
	
			$Ttask=count($GD);
			$Table="task";
			for ($i=0;$i<$Ttask;$i++){
				$Tname=$GD[$i]['id'];
				$Level=$GD[$i]['zorluk'];
				$Estimated_duration=$GD[$i]['sure'];
				$TData=array($Tname,$Level,$Estimated_duration);
				$this->ITask($Table,$TData);
				
			}
	}
	
   public function ITask($Table,$TData){
	  
		if(isset($Table) and isset($TData)){
			print_r($TData);
			$Mname=$TData[0];				
			$Mqu=DB::getRow("select count(t_id) as m from task where t_name=?",array($Mname))->m;
			if($Mqu == 0){
				$Iquery=DB::insert("insert into $Table (t_name,t_level,t_duration) values(?,?,?)",$TData);
			}
			else{
				return false;
			}
		}
   }
   
 

	
}


	class TaskAdapter implements Task{

		 public function GTask($Url,$Type){
			return true;
		 }
		 
		 public function GPattern($Url){
				echo  "Dahil edilecek Desenler";
		 }
	}

