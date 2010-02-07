/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

package com.jgeppert.struts2.jquery.components;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.components.Form;
import org.apache.struts2.views.annotations.StrutsTagAttribute;

import com.opensymphony.xwork2.util.ValueStack;

public abstract class AbstractFormElement extends AbstractContainer {
  protected String maxlength;
  protected String readonly;
  protected String size;

  protected String parentTheme;

  public AbstractFormElement(ValueStack stack, HttpServletRequest request, HttpServletResponse response) {
    super(stack, request, response);
  }

  public void evaluateExtraParams()
  {
    super.evaluateExtraParams();

    Form form = (Form) findAncestor(Form.class);
    if (parentTheme != null)
    {
      addParameter("parentTheme", findString(parentTheme));
    }
    else if (form != null)
    {
      if (form != null) addParameter("parentTheme", form.getTheme());
    }
    else
    {
      addParameter("parentTheme", "simple");
    }

    if (form != null && (formIds == null || formIds.length() <= 0)) addParameter("formIds", form.getId());

    if (size != null)
    {
      addParameter("size", findString(size));
    }

    if (maxlength != null)
    {
      addParameter("maxlength", findString(maxlength));
    }

    if (readonly != null)
    {
      addParameter("readonly", findValue(readonly, Boolean.class));
    }
  }

  @StrutsTagAttribute(description = "The parent theme. Default: value of parent form tag or simple if no parent form tag is available")
  public void setParentTheme(String parentTheme)
  {
    this.parentTheme = parentTheme;
  }

  @StrutsTagAttribute(description = "HTML maxlength attribute", type = "Integer")
  public void setMaxlength(String maxlength)
  {
    this.maxlength = maxlength;
  }

  @StrutsTagAttribute(description = "Whether the input is readonly", type = "Boolean", defaultValue = "false")
  public void setReadonly(String readonly)
  {
    this.readonly = readonly;
  }

  @StrutsTagAttribute(description = "HTML size attribute", type = "Integer")
  public void setSize(String size)
  {
    this.size = size;
  }
}