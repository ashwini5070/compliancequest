trigger TaskTrigger on Task (After Update) {
    
 if(trigger.isUpdate && trigger.isAfter){
        UpdateTaskStatus.onUpdateTaskStatus(trigger.old);
    } 
}