#' 股权出质按公司和日期查询
#'
#' @param dms_token
#' @param FCompanyName
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' EquityPledge_selectByCompany()
EquityPledge_selectByCompany<- function(dms_token,FCompanyName,FDate) {

  sql=paste0("SELECT *
  FROM [dbo].[rds_qcc_src_vw_md_company_EquityPledge_cn]
  where [查询公司名称]='",FCompanyName,"'
  and [查询日期]='",FDate,"'
")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}



#' 股权出质按日期查询
#'
#' @param dms_token
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' EquityPledge_selectByDate()
EquityPledge_selectByDate<- function(dms_token,FDate) {

  sql=paste0("SELECT *
  FROM [dbo].[rds_qcc_src_vw_md_company_EquityPledge_cn]
  where
   [查询日期]='",FDate,"'

")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}
