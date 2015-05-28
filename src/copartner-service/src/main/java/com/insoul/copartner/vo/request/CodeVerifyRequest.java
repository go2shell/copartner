package com.insoul.copartner.vo.request;

import java.io.Serializable;

import org.hibernate.validator.constraints.NotEmpty;

import com.insoul.copartner.validate.constraint.StringPattern;

public class CodeVerifyRequest implements Serializable {

    private static final long serialVersionUID = 3748035503453389406L;

    @StringPattern(regexp = "^1[0-9]{10}$")
    private String mobile;

    @NotEmpty
    @StringPattern(regexp = "register|retrievePwd")
    private String type;

    @NotEmpty
    private String code;

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

}
