.class Lcom/estrongs/android/ui/pcs/ah;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/pcs/x;

.field private b:Lcom/estrongs/android/ui/pcs/am;

.field private c:Lcom/estrongs/android/ui/pcs/ak;

.field private d:Lcom/estrongs/android/ui/pcs/al;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field private i:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/pcs/x;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->b:Lcom/estrongs/android/ui/pcs/am;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->c:Lcom/estrongs/android/ui/pcs/ak;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->d:Lcom/estrongs/android/ui/pcs/al;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/ah;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/ah;->f:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/ah;->g:Z

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/pcs/ai;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/ai;-><init>(Lcom/estrongs/android/ui/pcs/ah;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/ah;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private a(ILjava/lang/Object;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, v1, Lcom/estrongs/android/ui/pcs/x;->b:Lcom/estrongs/android/ui/pcs/an;

    iget-boolean v1, v1, Lcom/estrongs/android/ui/pcs/an;->b:Z

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    const v1, 0x7f0b046d

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZLjava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->f(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->o(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->b(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_2
    return-void

    :sswitch_0
    const v0, 0x7f0b0477

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->q(Lcom/estrongs/android/ui/pcs/x;)V

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0b0467

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/pcs/ah;->a(Z)V

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0461

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->b(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0b046c

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    goto/16 :goto_0

    :sswitch_4
    const v0, 0x7f0b0468

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

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

.method static synthetic a(Lcom/estrongs/android/ui/pcs/ah;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/ah;->b(ILjava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->p(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->p(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->c(Lcom/estrongs/android/ui/pcs/x;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/ah;)Lcom/estrongs/android/ui/pcs/am;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->b:Lcom/estrongs/android/ui/pcs/am;

    return-object v0
.end method

.method private b()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/ui/pcs/ah;->g:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v2, Lcom/estrongs/android/ui/pcs/al;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/al;-><init>(Lcom/estrongs/android/ui/pcs/ah;Lcom/estrongs/android/ui/pcs/y;)V

    iput-object v2, p0, Lcom/estrongs/android/ui/pcs/ah;->d:Lcom/estrongs/android/ui/pcs/al;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v5

    iget-object v6, p0, Lcom/estrongs/android/ui/pcs/ah;->d:Lcom/estrongs/android/ui/pcs/al;

    if-nez v3, :cond_2

    move-object v2, v0

    :goto_0
    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v5, v6, v4, v2, v0}, Lcom/baidu/sapi2/SapiHelper;->getSmsCode(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->b(Z)V

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

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0469

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->f(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->o(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->b(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    :cond_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/ah;->b()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0234

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    goto :goto_0

    :sswitch_2
    const v0, 0x7f0b0465

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    goto :goto_0

    :sswitch_3
    const v0, 0x7f0b046e

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b046f

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0470

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0462

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :sswitch_7
    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0468

    invoke-direct {p0, v2, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

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

.method static synthetic b(Lcom/estrongs/android/ui/pcs/ah;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/ah;->c(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/ah;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/pcs/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/pcs/am;-><init>(Lcom/estrongs/android/ui/pcs/ah;Lcom/estrongs/android/ui/pcs/y;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->b:Lcom/estrongs/android/ui/pcs/am;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ah;->b:Lcom/estrongs/android/ui/pcs/am;

    invoke-virtual {v0, v1, p1}, Lcom/baidu/sapi2/SapiHelper;->getVerifyImg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->b(Z)V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/ah;->f:Z

    if-eqz p1, :cond_0

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/ah;)Lcom/estrongs/android/ui/pcs/ak;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->c:Lcom/estrongs/android/ui/pcs/ak;

    return-object v0
.end method

.method private c(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/ah;->b(Z)V

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0469

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

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

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->s(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-direct {p0, v3}, Lcom/estrongs/android/ui/pcs/ah;->a(Z)V

    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/ah;->b(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, v2}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    const v0, 0x7f0b0468

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/ah;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/ah;->a(ILjava/lang/Object;)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/ah;->e:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->d(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->d(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/ah;)Lcom/estrongs/android/ui/pcs/al;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->d:Lcom/estrongs/android/ui/pcs/al;

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

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v0}, Lcom/estrongs/android/ui/pcs/x;->b(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ah;->a:Lcom/estrongs/android/ui/pcs/x;

    invoke-static {v2}, Lcom/estrongs/android/ui/pcs/x;->r(Lcom/estrongs/android/ui/pcs/x;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/estrongs/android/ui/pcs/ah;->e:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v3, Lcom/estrongs/android/ui/pcs/ak;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/estrongs/android/ui/pcs/ak;-><init>(Lcom/estrongs/android/ui/pcs/ah;Lcom/estrongs/android/ui/pcs/y;)V

    iput-object v3, p0, Lcom/estrongs/android/ui/pcs/ah;->c:Lcom/estrongs/android/ui/pcs/ak;

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/estrongs/android/ui/pcs/aj;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/estrongs/android/ui/pcs/aj;-><init>(Lcom/estrongs/android/ui/pcs/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, v5, v5}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    invoke-direct {p0, v6}, Lcom/estrongs/android/ui/pcs/ah;->c(Z)V

    invoke-direct {p0, v6}, Lcom/estrongs/android/ui/pcs/ah;->d(Z)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/estrongs/android/ui/pcs/ah;->a(Z)V

    const v0, 0x7f0b0467

    invoke-direct {p0, v1, v0}, Lcom/estrongs/android/ui/pcs/ah;->a(ZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/ah;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/pcs/ah;->b(Ljava/lang/String;)V

    return-void
.end method
