package com.baidu.sapi2.account;

import android.accounts.AccountsException;
import android.content.Context;
import com.baidu.sapi2.log.Logger;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public class AccountAPI {
    private static volatile AccountAPI api = null;
    private AccountAgent agent;
    private ExecutorService threadPools = Executors.newFixedThreadPool(1);

    public AccountAPI(Context context) {
        this.agent = new AccountAgent(context);
    }

    public static AccountAPI getInstance(Context context) {
        if (api == null) {
            synchronized (AccountAPI.class) {
                if (api == null) {
                    api = new AccountAPI(context);
                }
            }
        }
        return api;
    }

    public void asyncAddAccount(LocalAccountsListener localAccountsListener, DisplayAccount displayAccount) {
        this.threadPools.submit(new AccountThread(this.agent, localAccountsListener, RunType.ADD_ACCOUNT, displayAccount));
    }

    public void asyncClearAccount(LocalAccountsListener localAccountsListener) {
        this.threadPools.submit(new AccountThread(this.agent, localAccountsListener, RunType.CLEAR_ACCOUNT));
    }

    public void asyncDeleteByType(LocalAccountsListener localAccountsListener, AccountType accountType) {
        this.threadPools.submit(new AccountThread(this.agent, localAccountsListener, RunType.DELETE_BY_TYPE, accountType));
    }

    public void asyncDeleteSingleItem(LocalAccountsListener localAccountsListener, AccountType accountType, String str) {
        this.threadPools.submit(new AccountThread(this.agent, localAccountsListener, RunType.DELETE_SINGLE_ITEM, str, accountType));
    }

    public void asyncGetAccounts(LocalAccountsListener localAccountsListener, AccountType accountType) {
        this.threadPools.submit(new AccountThread(this.agent, localAccountsListener, RunType.GET_ACCOUNT_BY_TYPE, accountType));
    }

    public void asyncSaveAccount(LocalAccountsListener localAccountsListener) {
        this.threadPools.submit(new AccountThread(this.agent, localAccountsListener, RunType.SAVE_ACCOUNT));
    }

    public boolean blockAddAccount(DisplayAccount displayAccount) {
        try {
            return this.agent.blockAddAccount(displayAccount);
        } catch (AccountsException e) {
            Logger.w(e);
            return false;
        }
    }

    public boolean blockClearAccount() {
        return this.agent.blockClear();
    }

    public boolean blockDeleteByType(AccountType accountType) {
        return this.agent.blockDelete(accountType);
    }

    public boolean blockDeleteSingleItem(AccountType accountType, String str) {
        return this.agent.blockDelete(str, accountType);
    }

    public List<DisplayAccount> blockGetAccounts(AccountType accountType) {
        return this.agent.blockGetAccountMap(accountType);
    }

    public boolean blockSaveAccount() {
        return this.agent.blockSave();
    }
}
