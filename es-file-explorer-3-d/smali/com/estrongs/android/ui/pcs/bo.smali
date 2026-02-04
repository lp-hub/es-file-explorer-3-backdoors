.class Lcom/estrongs/android/ui/pcs/bo;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/estrongs/android/ui/pcs/bb;

.field b:Z

.field final synthetic c:Lcom/estrongs/android/ui/pcs/bb;

.field private d:Lcom/estrongs/android/ui/pcs/bs;

.field private e:Lcom/estrongs/android/ui/pcs/br;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:I

.field private j:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bb;Lcom/estrongs/android/ui/pcs/bb;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->a:Lcom/estrongs/android/ui/pcs/bb;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->b:Z

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->d:Lcom/estrongs/android/ui/pcs/bs;

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->e:Lcom/estrongs/android/ui/pcs/br;

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->f:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->g:Z

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->h:Z

    const/16 v0, 0x3c

    iput v0, p0, Lcom/estrongs/android/ui/pcs/bo;->i:I

    new-instance v0, Lcom/estrongs/android/ui/pcs/bp;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/bp;-><init>(Lcom/estrongs/android/ui/pcs/bo;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->j:Landroid/os/Handler;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/bo;->a:Lcom/estrongs/android/ui/pcs/bb;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private a(I)V
    .locals 5

    const/4 v4, 0x3

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->j:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->j:Landroid/os/Handler;

    const/4 v2, 0x0

    iget v3, p0, Lcom/estrongs/android/ui/pcs/bo;->i:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/estrongs/android/ui/pcs/bo;->i:I

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private a(ILjava/lang/Object;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v4}, Lcom/estrongs/android/ui/pcs/bo;->c(Z)V

    sparse-switch p1, :sswitch_data_0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bo;->b:Z

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b046d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->o(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->l(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :sswitch_0
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "PCS_Upgrade_UV"

    const-string v3, "PCS_Upgrade_UV"

    invoke-virtual {v1, v2, v3}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    check-cast p2, Lcom/baidu/sapi2/model/PhoneRegResponse;

    if-eqz p2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/baidu/sapi2/model/PhoneRegResponse;->mBduss:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "login:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/aw;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/estrongs/android/ui/pcs/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/bb;->b(Lcom/estrongs/android/ui/pcs/bb;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->b()V

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bo;->b:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, v4}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/fs/impl/i/b;->l(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->G()V

    const-string v2, "pcs://"

    invoke-virtual {v0, v2}, Lcom/estrongs/android/view/ar;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0, v5}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;Z)Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->b()V

    new-instance v0, Lcom/estrongs/android/ui/pcs/d;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v3}, Lcom/estrongs/android/ui/pcs/bb;->b(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/estrongs/android/ui/pcs/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/d;->a()V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/pcs/aw;->j()Lcom/estrongs/android/ui/pcs/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/d;->a(Lcom/estrongs/android/ui/pcs/v;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->c()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/bb;->b()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b045e

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b046a

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b0462

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b046b

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bo;->b()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b0468

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_6
        -0x69 -> :sswitch_6
        0x0 -> :sswitch_0
        0x1adb2 -> :sswitch_1
        0x1adb3 -> :sswitch_2
        0x1fbd3 -> :sswitch_3
        0x1fbd4 -> :sswitch_4
        0x1fbe6 -> :sswitch_5
    .end sparse-switch
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bo;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/bo;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bo;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bo;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bo;)Lcom/estrongs/android/ui/pcs/br;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->e:Lcom/estrongs/android/ui/pcs/br;

    return-object v0
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bo;->g:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v1, Lcom/estrongs/android/ui/pcs/bs;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/pcs/bs;-><init>(Lcom/estrongs/android/ui/pcs/bo;Lcom/estrongs/android/ui/pcs/bc;)V

    iput-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->d:Lcom/estrongs/android/ui/pcs/bs;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bo;->d:Lcom/estrongs/android/ui/pcs/bs;

    invoke-virtual {v1, v2, v0}, Lcom/baidu/sapi2/SapiHelper;->getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bo;->b(Z)V

    :cond_1
    return-void
.end method

.method private b(ILjava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bo;->b(Z)V

    sparse-switch p1, :sswitch_data_0

    iget-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bo;->b:Z

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b046d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->f(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->p(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->b(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bo;->c()V

    return-void

    :sswitch_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0477

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(I)V

    iput-boolean v3, p0, Lcom/estrongs/android/ui/pcs/bo;->h:Z

    goto :goto_0

    :sswitch_1
    if-nez p2, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->a:Lcom/estrongs/android/ui/pcs/bi;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    if-nez p2, :cond_4

    :goto_2
    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->a:Lcom/estrongs/android/ui/pcs/bi;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b046c

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b0468

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bo;->a(ILjava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_4
        -0x69 -> :sswitch_4
        0x0 -> :sswitch_0
        0x101 -> :sswitch_1
        0x1adcf -> :sswitch_2
        0x1fbe1 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bo;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/bo;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/bo;->g:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/bo;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Z)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/bo;)Lcom/estrongs/android/ui/pcs/bs;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->d:Lcom/estrongs/android/ui/pcs/bs;

    return-object v0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/sapi2/Utils;->isValidSmsCode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->h:Z

    if-eqz v0, :cond_0

    :cond_0
    return-void
.end method

.method private c(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/bo;->f:Z

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/bo;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bo;->a(Z)V

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->b(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bo;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/pcs/br;

    invoke-direct {v0, p0, v4}, Lcom/estrongs/android/ui/pcs/br;-><init>(Lcom/estrongs/android/ui/pcs/bo;Lcom/estrongs/android/ui/pcs/bc;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->e:Lcom/estrongs/android/ui/pcs/br;

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/estrongs/android/ui/pcs/bq;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/pcs/bq;-><init>(Lcom/estrongs/android/ui/pcs/bo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bo;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bo;->c:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->i(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method
