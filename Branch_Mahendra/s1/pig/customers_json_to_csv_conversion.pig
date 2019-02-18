pig -x local 

customers  = load '/home/cloudera/apps/s1/srcfile/lz/cust*'  using JsonLoader('custno:chararray,firstname:chararray,lastname:chararray,gender:chararray,age:chararray,profession:chararray,contactNo:chararray,emailId:chararray,city:chararray,state:chararray,isActive:chararray,
createdDate:chararray,UpdatedDate:chararray')
as (custno,firstname,lastname,gender,age,profession,contactno,emailid,city,state,isactive,
createddate,updateddate);

register /home/cloudera/apps/s1/lib/hcatalog-pig-adapter-0.12.0.jar;

STORE customers INTO 'stg_s1.customers_s1'
   USING org.apache.hive.hcatalog.pig.HCatStorer();

