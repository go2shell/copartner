package com.insoul.ti.req;

import org.apache.commons.lang3.StringUtils;

/**
 * @author 刘飞 E-mail:liufei_it@126.com
 * 
 * @version 1.0.0
 * @since 2015年7月4日 下午7:02:30
 */
public class ContentListRequest extends PageRequest {
	
	private Long id;
	
	private String title;

	private Integer type;// 1 政策解读, 2 公共资源

	private String status;

	@Override
	protected ContentListRequest Q() {
		StringBuilder sb = new StringBuilder();
		boolean appended = false;
		if (type != null && type > 0L) {
			sb.append("type").append("=").append(type);
			appended = true;
		}
		if (StringUtils.isNotBlank(status)) {
			if (appended) {
				sb.append("&");
			}
			sb.append("status").append("=").append(status);
			appended = true;
		}
		if (id != null) {
			if (appended) {
				sb.append("&");
			}
			sb.append("id").append("=").append(id);
			appended = true;
		}
		if (StringUtils.isNotBlank(title)) {
			if (appended) {
				sb.append("&");
			}
			sb.append("title").append("=").append(title);
			appended = true;
		}
		getQuery().setQueryString(sb.toString());
		return this;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}