#' 企业征信统计表按公司和日期查询
#'
#' @param dms_token
#' @param FCompanyName
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' count_stat_selectByCompany()
count_stat_selectByCompany<- function(dms_token,FCompanyName,FDate) {

  sql=paste0("SELECT *
  FROM [dbo].[rds_qcc_src_vw_md_company_count_stat_en]
  where [查询公司名称]='",FCompanyName,"'
  and [查询日期]='",FDate,"'
order by  [负面记录数] desc,[正面记录数] asc
")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}



#' 企业征信统计表按日期查询
#'
#' @param dms_token
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' count_stat_selectByDate()
count_stat_selectByDate<- function(dms_token,FDate) {

  sql=paste0("SELECT *
  FROM [dbo].[rds_qcc_src_vw_md_company_count_stat_en]
  where
   [查询日期]='",FDate,"'
order by  [负面记录数] desc,[正面记录数] asc
")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}
