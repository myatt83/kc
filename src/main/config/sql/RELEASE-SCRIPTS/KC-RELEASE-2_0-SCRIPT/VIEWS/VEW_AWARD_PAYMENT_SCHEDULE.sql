CREATE OR REPLACE VIEW OSP$AWARD_PAYMENT_SCHEDULE AS 
SELECT AWARD_NUMBER MIT_AWARD_NUMBER,
       SEQUENCE_NUMBER,
       DUE_DATE,
       AMOUNT,
       UPDATE_TIMESTAMP,
       UPDATE_USER,
       SUBMIT_DATE,
       SUBMITTED_BY,
       INVOICE_NUMBER,
       STATUS_DESCRIPTION
FROM   AWARD_PAYMENT_SCHEDULE;