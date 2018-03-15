package com.beautifulsoup.youxin.pojo;

import java.util.ArrayList;
import java.util.List;

public class ItemAttributeExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ItemAttributeExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeIsNull() {
            addCriterion("sales_volume is null");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeIsNotNull() {
            addCriterion("sales_volume is not null");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeEqualTo(Integer value) {
            addCriterion("sales_volume =", value, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeNotEqualTo(Integer value) {
            addCriterion("sales_volume <>", value, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeGreaterThan(Integer value) {
            addCriterion("sales_volume >", value, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeGreaterThanOrEqualTo(Integer value) {
            addCriterion("sales_volume >=", value, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeLessThan(Integer value) {
            addCriterion("sales_volume <", value, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeLessThanOrEqualTo(Integer value) {
            addCriterion("sales_volume <=", value, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeIn(List<Integer> values) {
            addCriterion("sales_volume in", values, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeNotIn(List<Integer> values) {
            addCriterion("sales_volume not in", values, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeBetween(Integer value1, Integer value2) {
            addCriterion("sales_volume between", value1, value2, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andSalesVolumeNotBetween(Integer value1, Integer value2) {
            addCriterion("sales_volume not between", value1, value2, "salesVolume");
            return (Criteria) this;
        }

        public Criteria andCommentNumberIsNull() {
            addCriterion("comment_number is null");
            return (Criteria) this;
        }

        public Criteria andCommentNumberIsNotNull() {
            addCriterion("comment_number is not null");
            return (Criteria) this;
        }

        public Criteria andCommentNumberEqualTo(Integer value) {
            addCriterion("comment_number =", value, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberNotEqualTo(Integer value) {
            addCriterion("comment_number <>", value, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberGreaterThan(Integer value) {
            addCriterion("comment_number >", value, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("comment_number >=", value, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberLessThan(Integer value) {
            addCriterion("comment_number <", value, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberLessThanOrEqualTo(Integer value) {
            addCriterion("comment_number <=", value, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberIn(List<Integer> values) {
            addCriterion("comment_number in", values, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberNotIn(List<Integer> values) {
            addCriterion("comment_number not in", values, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberBetween(Integer value1, Integer value2) {
            addCriterion("comment_number between", value1, value2, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("comment_number not between", value1, value2, "commentNumber");
            return (Criteria) this;
        }

        public Criteria andCommentTotalIsNull() {
            addCriterion("comment_total is null");
            return (Criteria) this;
        }

        public Criteria andCommentTotalIsNotNull() {
            addCriterion("comment_total is not null");
            return (Criteria) this;
        }

        public Criteria andCommentTotalEqualTo(Integer value) {
            addCriterion("comment_total =", value, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalNotEqualTo(Integer value) {
            addCriterion("comment_total <>", value, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalGreaterThan(Integer value) {
            addCriterion("comment_total >", value, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalGreaterThanOrEqualTo(Integer value) {
            addCriterion("comment_total >=", value, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalLessThan(Integer value) {
            addCriterion("comment_total <", value, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalLessThanOrEqualTo(Integer value) {
            addCriterion("comment_total <=", value, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalIn(List<Integer> values) {
            addCriterion("comment_total in", values, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalNotIn(List<Integer> values) {
            addCriterion("comment_total not in", values, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalBetween(Integer value1, Integer value2) {
            addCriterion("comment_total between", value1, value2, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentTotalNotBetween(Integer value1, Integer value2) {
            addCriterion("comment_total not between", value1, value2, "commentTotal");
            return (Criteria) this;
        }

        public Criteria andCommentAverageIsNull() {
            addCriterion("comment_average is null");
            return (Criteria) this;
        }

        public Criteria andCommentAverageIsNotNull() {
            addCriterion("comment_average is not null");
            return (Criteria) this;
        }

        public Criteria andCommentAverageEqualTo(Long value) {
            addCriterion("comment_average =", value, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageNotEqualTo(Long value) {
            addCriterion("comment_average <>", value, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageGreaterThan(Long value) {
            addCriterion("comment_average >", value, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageGreaterThanOrEqualTo(Long value) {
            addCriterion("comment_average >=", value, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageLessThan(Long value) {
            addCriterion("comment_average <", value, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageLessThanOrEqualTo(Long value) {
            addCriterion("comment_average <=", value, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageIn(List<Long> values) {
            addCriterion("comment_average in", values, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageNotIn(List<Long> values) {
            addCriterion("comment_average not in", values, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageBetween(Long value1, Long value2) {
            addCriterion("comment_average between", value1, value2, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andCommentAverageNotBetween(Long value1, Long value2) {
            addCriterion("comment_average not between", value1, value2, "commentAverage");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberIsNull() {
            addCriterion("favorite_number is null");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberIsNotNull() {
            addCriterion("favorite_number is not null");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberEqualTo(Integer value) {
            addCriterion("favorite_number =", value, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberNotEqualTo(Integer value) {
            addCriterion("favorite_number <>", value, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberGreaterThan(Integer value) {
            addCriterion("favorite_number >", value, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("favorite_number >=", value, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberLessThan(Integer value) {
            addCriterion("favorite_number <", value, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberLessThanOrEqualTo(Integer value) {
            addCriterion("favorite_number <=", value, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberIn(List<Integer> values) {
            addCriterion("favorite_number in", values, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberNotIn(List<Integer> values) {
            addCriterion("favorite_number not in", values, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberBetween(Integer value1, Integer value2) {
            addCriterion("favorite_number between", value1, value2, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andFavoriteNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("favorite_number not between", value1, value2, "favoriteNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberIsNull() {
            addCriterion("question_number is null");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberIsNotNull() {
            addCriterion("question_number is not null");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberEqualTo(Integer value) {
            addCriterion("question_number =", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberNotEqualTo(Integer value) {
            addCriterion("question_number <>", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberGreaterThan(Integer value) {
            addCriterion("question_number >", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("question_number >=", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberLessThan(Integer value) {
            addCriterion("question_number <", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberLessThanOrEqualTo(Integer value) {
            addCriterion("question_number <=", value, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberIn(List<Integer> values) {
            addCriterion("question_number in", values, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberNotIn(List<Integer> values) {
            addCriterion("question_number not in", values, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberBetween(Integer value1, Integer value2) {
            addCriterion("question_number between", value1, value2, "questionNumber");
            return (Criteria) this;
        }

        public Criteria andQuestionNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("question_number not between", value1, value2, "questionNumber");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}