public class AccountCreationAndSFTask {
    
    Public static void createSFTask(list<Account> newAcc){
        
        List<Task> taskToCreate = New List<Task>();
        
        for(Account a : newAcc){
            Task t = New Task();
            t.Subject = 'Review Account -'+a.AccountNumber;
            t.ActivityDate =System.today().addDays(7);
            t.OwnerId = a.OwnerId;
            t.Status = 'Not Started';
            t.WhatId = a.Id;
            taskToCreate.add(t);
        }
        insert taskToCreate;
    }
    
    Public static void updateSFTask(list<Account> accOldList){
        
        
        List<Task> listToBeUpdated = New List<Task>();
        
        List<Task> oldTskMap;
        if(!accOldList.isEmpty()){
            for (Account acc : accOldList){
                oldTskMap = New List<Task>([SELECT Id, Status FROM Task]);
                for(Task tsk : oldTskMap){
                    if((acc.Id == tsk.WhatId) && (acc.Active_Record__c == true)){
                        tsk.Status = 'Completed';
                        listToBeUpdated.add(tsk);
                    }
                }
            }
            if(!listToBeUpdated.isEmpty()){
                Update listToBeUpdated;
            }
        }
    }
}