.class public abstract Lcom/baidu/sapi2/callback/LoginCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/sapi2/SapiCallBack;


# static fields
.field public static final REQUEST_LOGINPROTECT:I = 0x3e8


# instance fields
.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/sapi2/callback/LoginCallBack;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public abstract onEvent(ILjava/lang/Object;)V
.end method

.method public final onMustProtectEvent(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/sapi2/callback/LoginCallBack;->activity:Landroid/app/Activity;

    const-class v2, Lcom/baidu/sapi2/utils/LoginProtectAcitivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "protect_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/baidu/sapi2/callback/LoginCallBack;->activity:Landroid/app/Activity;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onOptionalProtectEvent(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
