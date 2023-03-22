public class UpdateTaskStatus {
    
    Public static void onUpdateTaskStatus(List<Task> tOldList){
        
        List<Account> listToBeUpdated = New List<Account>();
        
        Map<Id, Account> oldAccMap = New Map<Id, Account>([SELECT Id, Description, Active_Record__c FROM Account]);
        
        if(!tOldList.isEmpty() && (!oldAccMap.isEmpty())){
            for(Task tsk : tOldList){
                if(tsk.Status == 'Completed'){
                    
                    if(oldAccMap.get(tsk.WhatId).Id == tsk.WhatId){
                        oldAccMap.get(tsk.WhatId).Active_Record__c = True;
                        oldAccMap.get(tsk.WhatId).Description = tsk.Description;
                        listToBeUpdated.add(oldAccMap.get(tsk.WhatId));
                        
                    }
                    if(!listToBeUpdated.isEmpty()){
                        Update listToBeUpdated;
                    }
                    
                }
            }
        }
    }
}