#' 信用测算按公司和日期查询
#'
#' @param dms_token
#' @param FCompanyName
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' CreditCalculation_selectByCompany()
CreditCalculation_selectByCompany<- function(dms_token,FCompanyName,FDate) {

  sql=paste0("SELECT [查询公司名称]
      ,[查询日期]
      ,[查询状态]
      ,[基本信息_记录数]
      ,[开票信息_记录数]
      ,[股东信息_记录数]
      ,[主要人员_记录数]
      ,[企业画像_记录数]
      ,[对外投资_记录数]
      ,[纳税信用等级_记录数]
      ,[失信被执行人_记录数]
      ,[被执行人_记录数]
      ,[行政处罚_记录数]
      ,[经营异常_记录数]
      ,[动产抵押_记录数]
      ,[股权出质_记录数]
      ,[严重违法_记录数]
      ,[股权冻结_记录数]
      ,[司法拍卖_记录数]
      ,[破产重整_记录数]
      ,[限制高消费_记录数]
      ,[环保处罚_记录数]
      ,[欠税公告_记录数]
      ,[税收违法_记录数]
      ,[税务非正常户_记录数]
      ,[正面记录数]
      ,[负面记录数]
  FROM [dbo].[rds_qcc_src_vw_md_company_count_stat_en]
  where [查询公司名称]='",FCompanyName,"'
  and [查询日期]='",FDate,"'
order by  [负面记录数] desc,[正面记录数] asc
")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}



#' 信用测算按日期查询
#'
#' @param dms_token
#' #' @param FDate
#' @return 无返回值
#' @export
#'
#' @examples
#' CreditCalculation_selectByDate()
CreditCalculation_selectByDate<- function(dms_token,FDate) {

  sql=paste0("SELECT [查询公司名称]
      ,[查询日期]
      ,[查询状态]
      ,[基本信息_记录数]
      ,[开票信息_记录数]
      ,[股东信息_记录数]
      ,[主要人员_记录数]
      ,[企业画像_记录数]
      ,[对外投资_记录数]
      ,[纳税信用等级_记录数]
      ,[失信被执行人_记录数]
      ,[被执行人_记录数]
      ,[行政处罚_记录数]
      ,[经营异常_记录数]
      ,[动产抵押_记录数]
      ,[股权出质_记录数]
      ,[严重违法_记录数]
      ,[股权冻结_记录数]
      ,[司法拍卖_记录数]
      ,[破产重整_记录数]
      ,[限制高消费_记录数]
      ,[环保处罚_记录数]
      ,[欠税公告_记录数]
      ,[税收违法_记录数]
      ,[税务非正常户_记录数]
      ,[正面记录数]
      ,[负面记录数]
  FROM [dbo].[rds_qcc_src_vw_md_company_count_stat_en]
  where
   [查询日期]='",FDate,"'
order by  [负面记录数] desc,[正面记录数] asc
")

  res=tsda::sql_select2(token = dms_token,sql = sql)
  return(res)
}
