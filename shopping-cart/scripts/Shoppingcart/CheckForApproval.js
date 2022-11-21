
// read from existing workflow context 
// var productInfo = $.context.productInfo; 
// var productName = productInfo.productName; 
// var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

$.context.decision = lastUserTask1.decision;
$.context.whoApproved = userTaskProcessor;


