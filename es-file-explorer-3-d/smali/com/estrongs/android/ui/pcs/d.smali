.class public Lcom/estrongs/android/ui/pcs/d;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private A:Landroid/os/Handler;

.field private a:Ljava/lang/String;

.field private c:Lcom/estrongs/android/ui/b/ag;

.field private d:Landroid/view/View;

.field private e:Landroid/content/Context;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Lcom/estrongs/android/ui/pcs/u;

.field private o:Lcom/estrongs/android/ui/pcs/w;

.field private p:Ljava/lang/String;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/ProgressBar;

.field private v:Lcom/estrongs/android/ui/pcs/v;

.field private w:Lcom/estrongs/android/ui/pcs/aw;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Lcom/estrongs/android/pop/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PCSLogin"

    sput-object v0, Lcom/estrongs/android/ui/pcs/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/estrongs/android/ui/pcs/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Landroid/widget/LinearLayout;

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/d;->k:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/d;->l:Z

    iput-boolean v1, p0, Lcom/estrongs/android/ui/pcs/d;->m:Z

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->n:Lcom/estrongs/android/ui/pcs/u;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->o:Lcom/estrongs/android/ui/pcs/w;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->y:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/pcs/s;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/s;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->A:Landroid/os/Handler;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/d;->x:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/pcs/d;->y:Ljava/lang/String;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->z:Lcom/estrongs/android/pop/q;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/estrongs/android/ui/pcs/d;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/sapi2/Utils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/baidu/sapi2/Utils;->isValidEmail(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->A:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v7, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/pcs/u;

    invoke-direct {v0, p0, p1, v7}, Lcom/estrongs/android/ui/pcs/u;-><init>(Lcom/estrongs/android/ui/pcs/d;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->n:Lcom/estrongs/android/ui/pcs/u;

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/estrongs/android/ui/pcs/f;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/pcs/f;-><init>(Lcom/estrongs/android/ui/pcs/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, v7, v8, v8}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    invoke-direct {p0, v7, v7}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/d;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/d;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/d;ZILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/pcs/d;->a(ZILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/d;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/d;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZILjava/lang/Object;)V
    .locals 4

    const v2, 0x7f0b0461

    const v0, 0x7f0b0234

    const/4 v1, 0x0

    const/4 v3, 0x1

    sparse-switch p2, :sswitch_data_0

    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    const v0, 0x7f0b0469

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->u:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    :sswitch_0
    check-cast p3, Lcom/baidu/sapi2/model/LoginResponse;

    if-eqz p3, :cond_5

    iget-object v0, p3, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v0, p3, Lcom/baidu/sapi2/model/LoginResponse;->mEmail:Ljava/lang/String;

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p3, Lcom/baidu/sapi2/model/LoginResponse;->mUid:Ljava/lang/String;

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/estrongs/android/ui/pcs/cl;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v1, v3}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_4
    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Ljava/lang/String;

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/d;->b()V

    goto :goto_0

    :sswitch_1
    check-cast p3, Lcom/baidu/sapi2/model/LoginResponse;

    const v0, 0x7f0b0467

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    invoke-direct {p0, p1, v3}, Lcom/estrongs/android/ui/pcs/d;->b(ZZ)V

    if-eqz p3, :cond_6

    iget-object v0, p3, Lcom/baidu/sapi2/model/LoginResponse;->mVcodeStr:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->p:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    goto/16 :goto_0

    :sswitch_2
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    invoke-direct {p0, p1, v3, v2}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    check-cast p3, Lcom/baidu/sapi2/model/LoginResponse;

    if-eqz p3, :cond_7

    iget-object v0, p3, Lcom/baidu/sapi2/model/LoginResponse;->mVcodeStr:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->p:Ljava/lang/String;

    :cond_7
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZLandroid/widget/LinearLayout;)V

    goto/16 :goto_0

    :sswitch_3
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    if-eqz p1, :cond_8

    const v0, 0x7f0b045d

    :goto_1
    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    goto/16 :goto_0

    :cond_8
    const v0, 0x7f0b0466

    goto :goto_1

    :sswitch_6
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    const v0, 0x7f0b045e

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    invoke-direct {p0, p1, v3, v2}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->requestInputMethod()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZLandroid/widget/LinearLayout;)V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    const v0, 0x7f0b0460

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    goto/16 :goto_0

    :sswitch_9
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    const v0, 0x7f0b0468

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    goto/16 :goto_0

    :sswitch_a
    invoke-direct {p0, p1, v1}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    const v0, 0x7f0b0463

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/d;->b()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_9
        -0x69 -> :sswitch_9
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x2 -> :sswitch_5
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0x10 -> :sswitch_a
        0x101 -> :sswitch_1
        0x1adc8 -> :sswitch_8
        0x1adcf -> :sswitch_7
        0x1d4cd -> :sswitch_4
        0x1fbd3 -> :sswitch_b
    .end sparse-switch
.end method

.method private a(ZLandroid/widget/LinearLayout;)V
    .locals 0

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->m:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/pcs/w;

    invoke-direct {v0, p0, p1}, Lcom/estrongs/android/ui/pcs/w;-><init>(Lcom/estrongs/android/ui/pcs/d;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->o:Lcom/estrongs/android/ui/pcs/w;

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->o:Lcom/estrongs/android/ui/pcs/w;

    invoke-virtual {v0, v1, p2}, Lcom/baidu/sapi2/SapiHelper;->getVerifyImg(Lcom/baidu/sapi2/SapiCallBack;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/estrongs/android/ui/pcs/d;->c(ZZ)V

    :cond_1
    return-void
.end method

.method private a(ZZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/estrongs/android/ui/pcs/d;->l:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->u:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->u:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(ZZI)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/d;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/pcs/d;->k:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/d;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/estrongs/android/ui/pcs/d;->p:Ljava/lang/String;

    invoke-static {v2}, Lcom/baidu/sapi2/Utils;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/baidu/sapi2/Utils;->isValidPhone(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->A:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v8, v7, v8, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->l:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/sapi2/SapiHelper;->cancelRequest()Z

    :cond_1
    new-instance v0, Lcom/estrongs/android/ui/pcs/u;

    invoke-direct {v0, p0, p1, v7}, Lcom/estrongs/android/ui/pcs/u;-><init>(Lcom/estrongs/android/ui/pcs/d;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->n:Lcom/estrongs/android/ui/pcs/u;

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/estrongs/android/ui/pcs/g;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/pcs/g;-><init>(Lcom/estrongs/android/ui/pcs/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    invoke-direct {p0, v7, v7, v7}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    invoke-direct {p0, v7, v8}, Lcom/estrongs/android/ui/pcs/d;->a(ZZ)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->q:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/d;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/d;->a(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/d;ZILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/estrongs/android/ui/pcs/d;->b(ZILjava/lang/Object;)V

    return-void
.end method

.method private b(ZILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/estrongs/android/ui/pcs/d;->c(ZZ)V

    sparse-switch p2, :sswitch_data_0

    const v0, 0x7f0b0463

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_0

    check-cast p3, [B

    check-cast p3, [B

    array-length v0, p3

    invoke-static {p3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/t;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/pcs/t;-><init>(Lcom/estrongs/android/ui/pcs/d;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/estrongs/android/ui/pcs/d;->b(ZZ)V

    invoke-direct {p0, p1, v2}, Lcom/estrongs/android/ui/pcs/d;->c(ZZ)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    const v0, 0x7f0b0468

    invoke-direct {p0, p1, v3, v0}, Lcom/estrongs/android/ui/pcs/d;->a(ZZI)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0xc8 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private b(ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/d;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->z:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/pop/q;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(ZZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/estrongs/android/ui/pcs/d;->m:Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f08010b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->y:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->h:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f08010c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->j:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->q:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->q:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/pcs/e;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/e;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->u:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->u:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080115

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->r:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->r:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/j;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/j;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080116

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->s:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->s:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/l;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/l;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080117

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->t:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->t:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/n;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/n;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080110

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/estrongs/android/ui/pcs/p;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/p;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/estrongs/android/ui/b/aq;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b044b

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Lcom/estrongs/android/ui/pcs/q;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/q;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->y:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->q:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/estrongs/android/ui/pcs/r;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/r;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    sget-boolean v0, Lcom/estrongs/android/pop/m;->Q:Z

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->e()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->A:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "nettype"

    const-string v3, "pcs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ostype"

    const-string v3, "renren"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x100101d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private f()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "nettype"

    const-string v3, "pcs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ostype"

    const-string v3, "sinaweibo"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x100101d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->f()V

    return-void
.end method

.method private g()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    const-class v2, Lcom/estrongs/android/ui/view/PcsThirdPartOAuth;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "nettype"

    const-string v3, "pcs"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ostype"

    const-string v3, "qq"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const v2, 0x100101d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic g(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->g()V

    return-void
.end method

.method private h()V
    .locals 3

    const-string v0, "http://wappass.baidu.com/passport/?getpass"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/estrongs/android/ui/pcs/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/d;->h()V

    return-void
.end method

.method static synthetic i(Lcom/estrongs/android/ui/pcs/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/pcs/d;)Lcom/estrongs/android/ui/pcs/w;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->o:Lcom/estrongs/android/ui/pcs/w;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/pcs/d;)Lcom/estrongs/android/ui/pcs/u;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->n:Lcom/estrongs/android/ui/pcs/u;

    return-object v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/pcs/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->k:Z

    return v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/pcs/d;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->q:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/pcs/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/ui/pcs/aw;->a(Lcom/estrongs/android/ui/pcs/d;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/pcs/d;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Press_Login"

    const-string v2, "Press_Login"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/content/Intent;I)V
    .locals 4

    const/4 v1, -0x1

    const v0, 0x100101d

    if-ne v0, p1, :cond_3

    if-ne p3, v1, :cond_1

    const-string v0, "result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "userinfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->w:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/d;->b()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/d;->b()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e8

    if-ne v0, p1, :cond_1

    if-ne p3, v1, :cond_5

    const-string v0, "sapi_resultcode"

    const/16 v1, -0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_5

    invoke-static {}, Lcom/baidu/sapi2/SapiHelper;->getInstance()Lcom/baidu/sapi2/SapiHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/sapi2/SapiHelper;->getToken()Lcom/baidu/sapi2/loginshare/Token;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v0, Lcom/baidu/sapi2/model/LoginResponse;

    invoke-direct {v0}, Lcom/baidu/sapi2/model/LoginResponse;-><init>()V

    iget-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mUsername:Ljava/lang/String;

    iput-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mUsername:Ljava/lang/String;

    iget-object v3, v2, Lcom/baidu/sapi2/loginshare/Token;->mEmail:Ljava/lang/String;

    iput-object v3, v0, Lcom/baidu/sapi2/model/LoginResponse;->mEmail:Ljava/lang/String;

    iget-object v2, v2, Lcom/baidu/sapi2/loginshare/Token;->mBduss:Ljava/lang/String;

    iput-object v2, v0, Lcom/baidu/sapi2/model/LoginResponse;->mBduss:Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/d;->n:Lcom/estrongs/android/ui/pcs/u;

    invoke-virtual {v2, v1, v0}, Lcom/estrongs/android/ui/pcs/u;->onEvent(ILjava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/estrongs/android/ui/pcs/d;->b()V

    goto :goto_0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public a(Lcom/estrongs/android/ui/pcs/v;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/d;->v:Lcom/estrongs/android/ui/pcs/v;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->f:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->g:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->c:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/pcs/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->z:Lcom/estrongs/android/pop/q;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ag()V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->v:Lcom/estrongs/android/ui/pcs/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->v:Lcom/estrongs/android/ui/pcs/v;

    invoke-interface {v0, v1, p1, p2}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Normal_Login"

    const-string v2, "Normal_Login"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/d;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    const-string v2, "Market"

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/q;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/util/ak;->bp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/estrongs/android/view/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/estrongs/android/pop/q;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/estrongs/android/pop/m;->I:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/ar;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->v:Lcom/estrongs/android/ui/pcs/v;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->v:Lcom/estrongs/android/ui/pcs/v;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/estrongs/android/ui/pcs/v;->a(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/d;->d:Landroid/view/View;

    const v1, 0x7f080118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/estrongs/android/ui/pcs/h;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/h;-><init>(Lcom/estrongs/android/ui/pcs/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
