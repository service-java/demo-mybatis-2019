package com.wangzhixuan.commons.result;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.wangzhixuan.commons.utils.JsonUtils;

/**
 * ZTree tree
 *
 * @author L.cm
 */
public class ZTree implements java.io.Serializable {
	private static final long serialVersionUID = -3349794575298238272L;

	private Long id;
	private Long pId;
	private String name;
	@JsonInclude(Include.NON_NULL)
	private Boolean open;
	private boolean checked = false;
	private boolean chkDisabled = false;
	private String iconSkin;
	@JsonInclude(Include.NON_NULL)
	private String target;
	@JsonInclude(Include.NON_NULL)
	private String attributes;
    /**
     * ajax,iframe,
     */
    private String openMode;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getpId() {
		return pId;
	}

	public void setpId(Long pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Boolean getOpen() {
		return open;
	}

	public void setOpen(Boolean open) {
		this.open = open;
	}

	public boolean isChecked() {
		return checked;
	}

	public void setChecked(boolean checked) {
		this.checked = checked;
	}

	public boolean isChkDisabled() {
		return chkDisabled;
	}

	public void setChkDisabled(boolean chkDisabled) {
		this.chkDisabled = chkDisabled;
	}

	public String getIconSkin() {
		return iconSkin;
	}

	public void setIconSkin(String iconSkin) {
		this.iconSkin = iconSkin;
	}

	public String getTarget() {
		return target;
	}

	public void setTarget(String target) {
		this.target = target;
	}

	public String getAttributes() {
		return attributes;
	}

	public void setAttributes(String attributes) {
		this.attributes = attributes;
	}

	public String getOpenMode() {
		return openMode;
	}

	public void setOpenMode(String openMode) {
		this.openMode = openMode;
	}

	@Override
	public String toString() {
		return JsonUtils.toJson(this);
	}
}
