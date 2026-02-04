.class Lcom/estrongs/android/ui/pcs/bi;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/bb;

.field private b:Lcom/estrongs/android/ui/pcs/bn;

.field private c:Lcom/estrongs/android/ui/pcs/bl;

.field private d:Lcom/estrongs/android/ui/pcs/bm;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/bb;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->b:Lcom/estrongs/android/ui/pcs/bn;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->c:Lcom/estrongs/android/ui/pcs/bl;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->d:Lcom/estrongs/android/ui/pcs/bm;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bi;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bi;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/bi;->g:Z

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/pcs/bj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/bj;-><init>(Lcom/estrongs/android/ui/pcs/bi;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bi;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/bb;->b:Lcom/estrongs/android/ui/pcs/bo;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/pcs/bo;->b:Z

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    const v1, 0x7f0b046d

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZLjava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->f(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->p(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->b(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_2
    return-void

    :sswitch_0
    const v0, 0x7f0b0477

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->r(Lcom/estrongs/android/ui/pcs/bb;)V

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0b0467

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/pcs/bi;->a(Z)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bb;->s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0461

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0b046c

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto/16 :goto_0

    :sswitch_4
    const v0, 0x7f0b0468

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto/16 :goto_0

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

.method static synthetic a(Lcom/estrongs/android/ui/pcs/bi;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/bi;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->q(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->q(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->c(Lcom/estrongs/android/ui/pcs/bb;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bi;)Lcom/estrongs/android/ui/pcs/bn;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->b:Lcom/estrongs/android/ui/pcs/bn;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bb;->s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/pcs/bi;->g:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v2, Lcom/estrongs/android/ui/pcs/bm;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/bm;-><init>(Lcom/estrongs/android/ui/pcs/bi;Lcom/estrongs/android/ui/pcs/bc;)V

    iput-object v2, p0, Lcom/estrongs/android/ui/pcs/bi;->d:Lcom/estrongs/android/ui/pcs/bm;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/ui/pcs/bi;->d:Lcom/estrongs/android/ui/pcs/bm;

    if-nez v3, :cond_2

    move-object v2, v0

    :goto_0
    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v5, v6, v4, v2, v0}, Lcom/baidu/sapi2/SapiHelper;->getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->b(Z)V

    :cond_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method private b(ILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0469

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->f(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->p(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->b(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/bi;->b()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0234

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0b0465

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0b046e

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b046f

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0470

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0462

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0468

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_7
        -0x69 -> :sswitch_7
        0x0 -> :sswitch_0
        0x1adbc -> :sswitch_4
        0x1adbd -> :sswitch_1
        0x1adcf -> :sswitch_6
        0x1fbd1 -> :sswitch_5
        0x1fbe3 -> :sswitch_2
        0x1fbe4 -> :sswitch_3
    .end sparse-switch
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/bi;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/bi;->c(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/bi;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/pcs/bn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/pcs/bn;-><init>(Lcom/estrongs/android/ui/pcs/bi;Lcom/estrongs/android/ui/pcs/bc;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->b:Lcom/estrongs/android/ui/pcs/bn;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bi;->b:Lcom/estrongs/android/ui/pcs/bn;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/sapi2/SapiHelper;->getVerifyImg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->b(Z)V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/bi;->f:Z

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/bi;)Lcom/estrongs/android/ui/pcs/bl;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->c:Lcom/estrongs/android/ui/pcs/bl;

    return-object v0
.end method

.method private c(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/bi;->b(Z)V

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0469

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_0

    check-cast p2, [B

    check-cast p2, [B

    array-length v0, p2

    invoke-static {p2, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bb;->t(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/pcs/bi;->a(Z)V

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/bi;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    const v0, 0x7f0b0468

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/bi;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/bi;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/bi;->e:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->d(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->d(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/bi;)Lcom/estrongs/android/ui/pcs/bm;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->d:Lcom/estrongs/android/ui/pcs/bm;

    return-object v0
.end method

.method private d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/bb;->b(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/bb;->a(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bi;->a:Lcom/estrongs/android/ui/pcs/bb;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/bb;->s(Lcom/estrongs/android/ui/pcs/bb;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/estrongs/android/ui/pcs/bi;->e:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v3, Lcom/estrongs/android/ui/pcs/bl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/estrongs/android/ui/pcs/bl;-><init>(Lcom/estrongs/android/ui/pcs/bi;Lcom/estrongs/android/ui/pcs/bc;)V

    iput-object v3, p0, Lcom/estrongs/android/ui/pcs/bi;->c:Lcom/estrongs/android/ui/pcs/bl;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/estrongs/android/ui/pcs/bk;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/estrongs/android/ui/pcs/bk;-><init>(Lcom/estrongs/android/ui/pcs/bi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, v5, v5}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    invoke-direct {p0, v6}, Lcom/estrongs/android/ui/pcs/bi;->c(Z)V

    invoke-direct {p0, v6}, Lcom/estrongs/android/ui/pcs/bi;->d(Z)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/bi;->a(Z)V

    const v0, 0x7f0b0467

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/ui/pcs/bi;->a(ZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/bi;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/bi;->b(Ljava/lang/String;)V

    return-void
.end method
