package com.baidu.sapi2.account;

import android.accounts.AccountsException;

/* loaded from: classes.dex */
public class AccountThread extends Thread {
    private DisplayAccount account;
    private String accountName;
    private AccountType accountType;
    private AccountAgent agent;
    private LocalAccountsListener mListener;
    private RunType type;

    public AccountThread(AccountAgent accountAgent, LocalAccountsListener localAccountsListener, RunType runType) {
        this.agent = accountAgent;
        this.type = runType;
        this.mListener = localAccountsListener;
    }

    public AccountThread(AccountAgent accountAgent, LocalAccountsListener localAccountsListener, RunType runType, AccountType accountType) {
        this.agent = accountAgent;
        this.mListener = localAccountsListener;
        this.type = runType;
        this.accountType = accountType;
    }

    public AccountThread(AccountAgent accountAgent, LocalAccountsListener localAccountsListener, RunType runType, DisplayAccount displayAccount) {
        this.agent = accountAgent;
        this.mListener = localAccountsListener;
        this.type = runType;
        this.account = displayAccount;
    }

    public AccountThread(AccountAgent accountAgent, LocalAccountsListener localAccountsListener, RunType runType, String str, AccountType accountType) {
        this.agent = accountAgent;
        this.mListener = localAccountsListener;
        this.type = runType;
        this.accountType = accountType;
        this.accountName = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (this.type == RunType.ADD_ACCOUNT) {
            try {
                this.agent.blockAddAccount(this.account);
            } catch (AccountsException e) {
                this.mListener.getResult(false);
            }
        } else if (this.type == RunType.GET_ACCOUNT_BY_TYPE) {
            this.mListener.getResult(this.agent.blockGetAccountMap(this.accountType));
        } else if (this.type == RunType.SAVE_ACCOUNT) {
            this.mListener.getResult(this.agent.blockSave());
        } else if (this.type == RunType.DELETE_SINGLE_ITEM) {
            this.mListener.getResult(this.agent.blockDelete(this.accountName, this.accountType));
        } else if (this.type == RunType.DELETE_BY_TYPE) {
            this.mListener.getResult(this.agent.blockDelete(this.accountType));
        } else if (this.type == RunType.CLEAR_ACCOUNT) {
            this.mListener.getResult(this.agent.blockClear());
        }
        super.run();
    }
}
