trigger RestrictContactByName on Contact (before insert,before update) {
    
    for(Contact con:Trigger.new){
        if(con.lastName=='INVALIDNAME'){
            con.addError('The Last Name "'+con.lastName+'" is not allowed for DML');
        }
    }

}