package com.manage.beans;

import java.util.List;

import org.apache.poi.ss.formula.functions.T;


public class Page {

	/**
	 * 当前页页码：默认值为1，由前台传过来
	 * (如若修改请到PageCode，修改PAGE_PAGENO)
	 */
	private Integer pageno;
	/**
	 * 起始页：pageStartIndex=(pageno - 1) * pageSize;
	 */
	private Integer pageStartIndex;
	/**
	 * 页面大小：由程序员指定，默认值为3
	 * (如若修改请到PageCode，修改PAGE_PAGESIZE)
	 */
	private Integer pageSize;
	/**
	 * 总行数：由dao查出来，即总记录数
	 */
	private Integer totalRows;
	/**
	 * 总页数：
	 * if(totalRows % pageSize == 1){
			totalPages=totalRows / pageSize;
		}else{
			totalPages=totalRows / pageSize + 1;
		}
	 */
	private Integer totalPages;
	/**
	 * 页面数据：由dao查询出来，查询时需要两个参数，pageStartIndex和pageSize
	 */
	private List<T> datas;
	
	
	/**
	 * 
	 */
	public Page() {
			this.pageno=PageCode.PAGE_PAGENO;
			this.pageSize=PageCode.PAGE_PAGESIZE;
	}


	public Page(Integer pageno, Integer pageSize) {
       if(pageno == null || pageno <= 0){
    	   pageno=1;
       }
       if(pageSize <= 0){
    	   pageSize=3;
       }
		this.pageno =pageno;
		this.pageSize = pageSize;
	}


	/**
	 * @return the pageno
	 */
	public Integer getPageno() {
		return pageno;
	}


	/**
	 * @param pageno the pageno to set
	 */
	public void setPageno(Integer pageno) {
		this.pageno = pageno;
	}


	/**
	 * @return the pageStartIndex
	 */
	public Integer getPageStartIndex() {
		pageStartIndex=(pageno - 1) * pageSize;
		
		if(pageStartIndex <= 0 || pageStartIndex == null ){
			pageStartIndex=0;
		}
	
		return pageStartIndex;
	}


	/**
	 * @param pageStartIndex the pageStartIndex to set
	 */
	public void setPageStartIndex(Integer pageStartIndex) {
		this.pageStartIndex = pageStartIndex;
	}


	/**
	 * @return the pageSize
	 */
	public Integer getPageSize() {
		return pageSize;
	}


	/**
	 * @param pageSize the pageSize to set
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}


	/**
	 * @return the totalRows
	 */
	public Integer getTotalRows() {
		return totalRows;
	}


	/**
	 * @param totalRows the totalRows to set
	 */
	public void setTotalRows(Integer totalRows) {
		this.totalRows = totalRows;
	}


	/**
	 * @return the totalPages
	 */
	public Integer getTotalPages() {
		if(totalRows % pageSize == 1){
			totalPages=totalRows / pageSize;
		}else{
			totalPages=totalRows / pageSize + 1;
		}
			
		return totalPages;
	}


	/**
	 * @param totalPages the totalPages to set
	 */
	public void setTotalPages(Integer totalPages) {
		this.totalPages = totalPages;
	}


	/**
	 * @return the datas
	 */
	public List<T> getDatas() {
		return datas;
	}


	/**
	 * @param datas the datas to set
	 */
	public void setDatas(List<T> datas) {
		this.datas = datas;
	}


	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Page [pageno=" + pageno + ", pageStartIndex=" + pageStartIndex + ", pageSize=" + pageSize
				+ ", totalRows=" + totalRows + ", totalPages=" + totalPages + ", datas=" + datas + "]";
	}
	
	
}
