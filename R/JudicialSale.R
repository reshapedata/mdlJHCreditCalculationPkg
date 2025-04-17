#' 司法拍卖按公司和日期查询
#'
#' @param dms_token
#' @param FCompanyName
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' JudicialSale_selectByCompany()
JudicialSale_selectByCompany<- function(dms_token,FCompanyName,FDate) {

  sql=paste0("SELECT *
  FROM [dbo].[rds_qcc_src_vw_md_company_JudicialSale_cn]
  where [查询公司名称]='",FCompanyName,"'
  and [查询日期]='",FDate,"'
")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}



#' 司法拍卖按日期查询
#'
#' @param dms_token
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' JudicialSale_selectByDate()
JudicialSale_selectByDate<- function(dms_token,FDate) {

  sql=paste0("SELECT *
  FROM [dbo].[rds_qcc_src_vw_md_company_JudicialSale_cn]
  where
   [查询日期]='",FDate,"'

")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}
