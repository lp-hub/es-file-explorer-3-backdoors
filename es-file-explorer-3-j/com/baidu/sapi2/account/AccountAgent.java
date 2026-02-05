package com.baidu.sapi2.account;

import android.accounts.AccountsException;
import android.content.Context;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class AccountAgent {
    private static final int RETAIN_ACCOUNT_MAX = 5;
    private Context mContext;
    private HashMap<String, DisplayAccount> normalAccountMap = new LinkedHashMap();
    private HashMap<String, DisplayAccount> mobileAccountMap = new LinkedHashMap();

    public AccountAgent(Context context) {
        this.mContext = context;
    }

    private HashMap<String, DisplayAccount> blockRetainLastAccount(HashMap<String, DisplayAccount> hashMap, int i) {
        LinkedList linkedList;
        if (i > 0) {
            Iterator<String> it = hashMap.keySet().iterator();
            linkedList = null;
            while (it.hasNext()) {
                DisplayAccount displayAccount = hashMap.get(it.next());
                if (linkedList == null || linkedList.size() < i) {
                    LinkedList linkedList2 = new LinkedList();
                    linkedList2.add(displayAccount);
                    linkedList = linkedList2;
                } else {
                    DisplayAccount displayAccount2 = displayAccount;
                    for (int i2 = 0; i2 < linkedList.size(); i2++) {
                        if (displayAccount2 == null || ((DisplayAccount) linkedList.get(i2)).getLastLoginTime() > displayAccount2.getLastLoginTime()) {
                            displayAccount2 = (DisplayAccount) linkedList.get(i2);
                        }
                    }
                    if (displayAccount != displayAccount2) {
                        linkedList.remove(displayAccount2);
                        linkedList.add(displayAccount);
                    }
                }
            }
        } else {
            linkedList = null;
        }
        if (linkedList != null && linkedList.size() != 0) {
            Iterator it2 = linkedList.iterator();
            while (it2.hasNext()) {
                hashMap.remove(((DisplayAccount) it2.next()).getAccountName());
            }
        }
        return hashMap;
    }

    private List<DisplayAccount> createOrderedList(HashMap<String, DisplayAccount> hashMap) {
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = hashMap.keySet().iterator();
        while (it.hasNext()) {
            linkedList.add(hashMap.get(it.next()));
        }
        Collections.sort(linkedList, new Comparator<DisplayAccount>() { // from class: com.baidu.sapi2.account.AccountAgent.1
            @Override // java.util.Comparator
            public int compare(DisplayAccount displayAccount, DisplayAccount displayAccount2) {
                return String.valueOf(displayAccount2.getLastLoginTime()).compareTo(String.valueOf(displayAccount.getLastLoginTime()));
            }
        });
        return linkedList;
    }

    private void initAccountMap() {
        JSONArray jSONArray;
        if (this.normalAccountMap == null || this.normalAccountMap.size() == 0) {
            if (this.mobileAccountMap == null || this.mobileAccountMap.size() == 0) {
                this.normalAccountMap = new LinkedHashMap();
                try {
                    String blockReceive = AccountStorage.getInstance(this.mContext).blockReceive();
                    if (TextUtils.isEmpty(blockReceive) || (jSONArray = new JSONArray(blockReceive)) == null) {
                        return;
                    }
                    for (int i = 0; i < jSONArray.length(); i++) {
                        DisplayAccount displayAccount = DisplayAccount.toDisplayAccount(this.mContext, jSONArray.getJSONObject(i));
                        if (!TextUtils.isEmpty(displayAccount.getAccountName())) {
                            if (TextUtils.isEmpty(displayAccount.getDisplayPassword()) || TextUtils.isEmpty(displayAccount.getEncryptPassword()) || TextUtils.isEmpty(displayAccount.getKeyChain()) || System.currentTimeMillis() - displayAccount.getLastLoginTime() > 604800000) {
                                displayAccount.setDisplayPassword("");
                                displayAccount.setEncryptPassword("");
                                displayAccount.setKeyChain("");
                            }
                            if (displayAccount.getAccountType() == AccountType.NORMAL) {
                                this.normalAccountMap.put(displayAccount.getAccountName(), displayAccount);
                            } else if (displayAccount.getAccountType() == AccountType.PHONE) {
                                this.mobileAccountMap.put(displayAccount.getAccountName(), displayAccount);
                            }
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean blockAddAccount(DisplayAccount displayAccount) {
        if (displayAccount == null || TextUtils.isEmpty(displayAccount.getAccountName())) {
            throw new AccountsException("Account format is illegal.");
        }
        if (TextUtils.isEmpty(displayAccount.getDisplayPassword()) || TextUtils.isEmpty(displayAccount.getEncryptPassword()) || TextUtils.isEmpty(displayAccount.getKeyChain()) || System.currentTimeMillis() - displayAccount.getLastLoginTime() > 604800000) {
            displayAccount.setDisplayPassword("");
            displayAccount.setEncryptPassword("");
            displayAccount.setKeyChain("");
        }
        initAccountMap();
        int size = !this.normalAccountMap.containsKey(displayAccount.getAccountName()) ? (this.normalAccountMap.size() - 5) + 1 : this.normalAccountMap.size() - 5;
        if (displayAccount.getAccountType() == AccountType.NORMAL) {
            if (this.normalAccountMap.size() < 4 || (this.normalAccountMap.containsKey(displayAccount.getAccountName()) && this.normalAccountMap.size() == 5)) {
                this.normalAccountMap.put(displayAccount.getAccountName(), displayAccount);
            } else {
                this.normalAccountMap = blockRetainLastAccount(this.normalAccountMap, size);
                this.normalAccountMap.put(displayAccount.getAccountName(), displayAccount);
            }
            blockSave();
            return true;
        }
        if (displayAccount.getAccountType() != AccountType.PHONE) {
            return false;
        }
        if (this.mobileAccountMap.size() < 4 || (this.mobileAccountMap.containsKey(displayAccount.getAccountName()) && this.mobileAccountMap.size() < 5)) {
            this.mobileAccountMap.put(displayAccount.getAccountName(), displayAccount);
        } else {
            this.mobileAccountMap = blockRetainLastAccount(this.mobileAccountMap, size);
            this.mobileAccountMap.put(displayAccount.getAccountName(), displayAccount);
        }
        blockSave();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean blockClear() {
        this.normalAccountMap = new LinkedHashMap();
        this.mobileAccountMap = new LinkedHashMap();
        return AccountStorage.getInstance(this.mContext).blockClear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean blockDelete(AccountType accountType) {
        if (accountType == AccountType.NORMAL && this.normalAccountMap.size() > 0) {
            this.normalAccountMap.clear();
            blockSave();
            return true;
        }
        if (accountType != AccountType.PHONE || this.mobileAccountMap.size() <= 0) {
            return false;
        }
        this.mobileAccountMap.clear();
        blockSave();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean blockDelete(String str, AccountType accountType) {
        if (accountType == AccountType.NORMAL && this.normalAccountMap.containsKey(str)) {
            this.normalAccountMap.remove(str);
            blockSave();
            return true;
        }
        if (accountType != AccountType.PHONE || !this.mobileAccountMap.containsKey(str)) {
            return false;
        }
        this.mobileAccountMap.remove(str);
        blockSave();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<DisplayAccount> blockGetAccountMap(AccountType accountType) {
        if (accountType == AccountType.NORMAL) {
            if (this.normalAccountMap != null && this.normalAccountMap.size() != 0) {
                return createOrderedList(this.normalAccountMap);
            }
            initAccountMap();
            return createOrderedList(this.normalAccountMap);
        }
        if (accountType != AccountType.PHONE) {
            return null;
        }
        if (this.mobileAccountMap != null && this.mobileAccountMap.size() != 0) {
            return createOrderedList(this.mobileAccountMap);
        }
        initAccountMap();
        return createOrderedList(this.mobileAccountMap);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean blockSave() {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = this.normalAccountMap.keySet().iterator();
        while (it.hasNext()) {
            jSONArray.put(DisplayAccount.toJsonObject(this.mContext, this.normalAccountMap.get(it.next())));
        }
        Iterator<String> it2 = this.mobileAccountMap.keySet().iterator();
        while (it2.hasNext()) {
            jSONArray.put(DisplayAccount.toJsonObject(this.mContext, this.mobileAccountMap.get(it2.next())));
        }
        return AccountStorage.getInstance(this.mContext).blockUpdate(jSONArray.toString());
    }
}
