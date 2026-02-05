package com.baidu.sapi2.account;

import android.content.Context;
import android.text.TextUtils;
import com.baidu.sapi2.log.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class DisplayAccount {
    private static final String DISPLAY_ACCOUNT_DISPLAYNAME = "displayname";
    private static final String DISPLAY_ACCOUNT_DISPLAYPWD = "displaypassword";
    private static final String DISPLAY_ACCOUNT_KEYCHAIN = "keychain";
    private static final String DISPLAY_ACCOUNT_LASTTIME = "lasttime";
    private static final String DISPLAY_ACCOUNT_NAME = "name";
    private static final String DISPLAY_ACCOUNT_PWD = "password";
    private static final String DISPLAY_ACCOUNT_TYPE = "type";
    private String accountName;
    private AccountType accountType;
    private String displayName;
    private String displayPassword;
    private String encryptPassword;
    private String keyChain;
    private long lastLoginTime;

    public static DisplayAccount toDisplayAccount(Context context, JSONObject jSONObject) {
        DisplayAccount displayAccount = new DisplayAccount();
        displayAccount.setAccountName(jSONObject.optString(DISPLAY_ACCOUNT_NAME));
        displayAccount.setAccountType(AccountType.getAccountType(jSONObject.optInt(DISPLAY_ACCOUNT_TYPE)));
        displayAccount.setDisplayName(jSONObject.optString("displayname"));
        displayAccount.setDisplayPassword(jSONObject.optString(DISPLAY_ACCOUNT_DISPLAYPWD));
        displayAccount.setLastLoginTime(jSONObject.optLong(DISPLAY_ACCOUNT_LASTTIME));
        displayAccount.setEncryptPassword(jSONObject.optString(DISPLAY_ACCOUNT_PWD) == null ? null : AccountEncrypt.decryptPassword(context, jSONObject.optString(DISPLAY_ACCOUNT_PWD)));
        displayAccount.setKeyChain(jSONObject.optString(DISPLAY_ACCOUNT_KEYCHAIN));
        if (TextUtils.isEmpty(displayAccount.getDisplayPassword()) || TextUtils.isEmpty(displayAccount.getEncryptPassword()) || TextUtils.isEmpty(displayAccount.getKeyChain()) || System.currentTimeMillis() - displayAccount.getLastLoginTime() > 604800000) {
            displayAccount.setDisplayPassword("");
            displayAccount.setEncryptPassword("");
            displayAccount.setKeyChain("");
        }
        return displayAccount;
    }

    public static JSONObject toJsonObject(Context context, DisplayAccount displayAccount) {
        JSONObject jSONObject = new JSONObject();
        try {
            if (TextUtils.isEmpty(displayAccount.getDisplayPassword()) || TextUtils.isEmpty(displayAccount.getEncryptPassword()) || TextUtils.isEmpty(displayAccount.getKeyChain()) || System.currentTimeMillis() - displayAccount.getLastLoginTime() > 604800000) {
                displayAccount.setDisplayPassword("");
                displayAccount.setEncryptPassword("");
                displayAccount.setKeyChain("");
            }
            jSONObject.put(DISPLAY_ACCOUNT_NAME, displayAccount.getAccountName());
            jSONObject.put(DISPLAY_ACCOUNT_TYPE, displayAccount.getAccountType().getTypeID());
            jSONObject.put("displayname", displayAccount.getDisplayName());
            jSONObject.put(DISPLAY_ACCOUNT_DISPLAYPWD, displayAccount.getDisplayPassword());
            jSONObject.put(DISPLAY_ACCOUNT_PWD, displayAccount.getEncryptPassword() == null ? null : AccountEncrypt.encryptPassword(context, displayAccount.getEncryptPassword()));
            jSONObject.put(DISPLAY_ACCOUNT_LASTTIME, displayAccount.getLastLoginTime());
            jSONObject.put(DISPLAY_ACCOUNT_KEYCHAIN, displayAccount.getKeyChain());
        } catch (JSONException e) {
            Logger.w(e);
        }
        return jSONObject;
    }

    public String getAccountName() {
        return this.accountName;
    }

    public AccountType getAccountType() {
        return this.accountType;
    }

    public String getDisplayName() {
        return this.displayName;
    }

    public String getDisplayPassword() {
        return this.displayPassword;
    }

    public String getEncryptPassword() {
        return this.encryptPassword;
    }

    public String getKeyChain() {
        return this.keyChain;
    }

    public long getLastLoginTime() {
        return this.lastLoginTime;
    }

    public void setAccountName(String str) {
        this.accountName = str;
    }

    public void setAccountType(AccountType accountType) {
        this.accountType = accountType;
    }

    public void setDisplayName(String str) {
        this.displayName = str;
    }

    public void setDisplayPassword(String str) {
        this.displayPassword = str;
    }

    public void setEncryptPassword(String str) {
        this.encryptPassword = str;
    }

    public void setKeyChain(String str) {
        this.keyChain = str;
    }

    public void setLastLoginTime(long j) {
        this.lastLoginTime = j;
    }
}
