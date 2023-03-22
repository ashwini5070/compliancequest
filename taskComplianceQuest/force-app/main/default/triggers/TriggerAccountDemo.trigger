trigger TriggerAccountDemo on Account (after Insert, after Update) {
    /*system.debug('From Trigger 1');
    TriggerAccountDemoHandler.demoMethod(trigger.new); 
    
    if((trigger.isInsert || trigger.isUpdate) && trigger.isBefore){
        TriggerAccountDemoHandler.checkEmail(trigger.new);
    } 
    
    if((trigger.isInsert || trigger.isUpdate) && trigger.isBefore){
        AccountBillShippingAddUpdateHandler.updateAdd(trigger.new);
    } 
    
    if(trigger.isInsert && trigger.isAfter){
        AccContactCreateTriggerHandler.createContact(trigger.new);
    } 
    
    if(trigger.isUpdate && trigger.isBefore){
        AccPhoneUpdateWithRating.updatePhone(trigger.new, trigger.oldMap);
    } 
    
    if(trigger.isUpdate && trigger.isAfter){
        AccEmailPopulateOnAssoContact.checkEmail(trigger.newMap, trigger.oldMap);
    } 
    
     if(Trigger.isInsert && Trigger.isAfter){ 
       	AccDuplicate.duplicateAccount(trigger.new); 
    } 
    
    if(Trigger.isDelete && Trigger.isBefore){
        AccParentPreventDel.deletePreventionContact(Trigger.old);
    } 
    
    if(trigger.isInsert && trigger.isAfter){
        AccCreate2Duplicates.create2DuplicateAcc(trigger.new);
    } 
    
    if(trigger.isInsert && trigger.isBefore){
        AccPreventFromDuplication.preventAccFromDuplication(trigger.new);
    } 
        if(trigger.isUndelete && trigger.isAfter){
        AccRestoreName.checkRecord(trigger.new);
    } 
    
    if(Trigger.isUpdate && Trigger.isBefore){
        AccountHandlerDemo.changeRating(Trigger.new, Trigger.oldMap);
    } 
    
    if(Trigger.isInsert && Trigger.isBefore){
        AccountPhoneNameDuplicatePrev.beforeInsertMethod(Trigger.new);
    } 
    
    if(Trigger.isInsert && trigger.isAfter){
     AccountTriggerHandler.createCon(Trigger.new);
   } 
    */
    if(Trigger.isInsert && Trigger.isAfter){
        AccountCreationAndSFTask.createSFTask(Trigger.new);
    }
    /* 
    if(Trigger.isUpdate && Trigger.isAfter){
        AccountCreationAndSFTask.updateSFTask(Trigger.old);
    } */
}