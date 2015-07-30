package com.insoul.ti.controller;

import java.util.List;

import javax.validation.Valid;

import org.apache.commons.collections.CollectionUtils;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.insoul.copartner.dao.criteria.DemandCommentCriteria;
import com.insoul.copartner.dao.criteria.ProjectCommentCriteria;
import com.insoul.copartner.domain.DemandComments;
import com.insoul.copartner.domain.ProjectComments;
import com.insoul.ti.WebBase;
import com.insoul.ti.req.CommentsListRequest;
import com.insoul.ti.req.PageQuery;

/**
 * @author 刘飞 E-mail:liufei_it@126.com
 * 
 * @version 1.0.0
 * @since 2015年7月4日 下午11:37:15
 */
@Controller
@RequestMapping("/comments")
public class CommentsController extends WebBase {

	private static final String COMMENTS_LIST = "comments_list";

	@RequestMapping("/list")
	public ModelAndView list(@Valid CommentsListRequest request, BindingResult result) {
		ModelAndView mv = createModelView(COMMENTS_LIST, request);
		PageQuery query = request.init().getQuery();
		if (request.getType() == 1) {
			DemandCommentCriteria criteria = new DemandCommentCriteria();
			criteria.setLimit(query.getPage_size());
			criteria.setOffset(Long.valueOf(query.getIndex()).intValue());
			criteria.setDemandId(request.getDomainId());
			criteria.setStatus(request.getStatus());
			List<DemandComments> list = demandCommentsDao.queryComments(criteria);
			mv.addObject("commentsList", list);
			mv.addObject("success", CollectionUtils.isNotEmpty(list));
		} else if (request.getType() == 2) {
			ProjectCommentCriteria criteria = new ProjectCommentCriteria();
			criteria.setLimit(query.getPage_size());
			criteria.setOffset(Long.valueOf(query.getIndex()).intValue());
			criteria.setProjectId(request.getDomainId());
			criteria.setStatus(request.getStatus());
			List<ProjectComments> list = projectCommentsDao.queryComments(criteria);
			mv.addObject("commentsList", list);
			mv.addObject("success", CollectionUtils.isNotEmpty(list));
		}
		mv.addObject("query", query);
		mv.addObject("req", request);
		return mv;
	}
}