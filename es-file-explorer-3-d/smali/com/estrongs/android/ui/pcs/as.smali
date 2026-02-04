.class public Lcom/estrongs/android/ui/pcs/as;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/ui/b/ag;

.field private b:Landroid/content/Context;

.field private c:Lcom/estrongs/android/ui/pcs/x;

.field private d:Lcom/estrongs/android/ui/pcs/aw;

.field private e:I

.field private f:Lcom/estrongs/android/pop/q;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/estrongs/android/ui/pcs/x;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12

    iput v0, p0, Lcom/estrongs/android/ui/pcs/as;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->g:Ljava/lang/String;

    new-instance v0, Lcom/estrongs/android/ui/pcs/at;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/pcs/at;-><init>(Lcom/estrongs/android/ui/pcs/as;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->h:Landroid/os/Handler;

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->f:Lcom/estrongs/android/pop/q;

    invoke-static {}, Lcom/estrongs/android/ui/pcs/aw;->a()Lcom/estrongs/android/ui/pcs/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->d:Lcom/estrongs/android/ui/pcs/aw;

    iput-object p2, p0, Lcom/estrongs/android/ui/pcs/as;->c:Lcom/estrongs/android/ui/pcs/x;

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/as;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/as;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/pcs/as;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/pcs/as;->g:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->d:Lcom/estrongs/android/ui/pcs/aw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->d:Lcom/estrongs/android/ui/pcs/aw;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/aw;->a(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->d:Lcom/estrongs/android/ui/pcs/aw;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/aw;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->c:Lcom/estrongs/android/ui/pcs/x;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/ui/pcs/x;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/estrongs/android/util/a;->a()Lcom/estrongs/android/util/a;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "SMS_Register"

    const-string v2, "SMS_Register"

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    const v1, 0x7f0b0480

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->c:Lcom/estrongs/android/ui/pcs/x;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/as;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/estrongs/android/ui/pcs/as;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/pcs/as;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/estrongs/android/ui/pcs/as;)I
    .locals 2

    iget v0, p0, Lcom/estrongs/android/ui/pcs/as;->e:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/estrongs/android/ui/pcs/as;->e:I

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    int-to-long v1, v1

    const/16 v6, 0x20

    shl-long/2addr v1, v6

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v6, v0

    or-long v0, v1, v6

    invoke-direct {v3, v4, v5, v0, v1}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/pcs/as;)I
    .locals 1

    iget v0, p0, Lcom/estrongs/android/ui/pcs/as;->e:I

    return v0
.end method

.method private d()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b047f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Lcom/estrongs/android/ui/b/aq;

    iget-object v2, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/estrongs/android/ui/b/aq;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b044b

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/b/aq;->a(I)Lcom/estrongs/android/ui/b/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/estrongs/android/ui/b/aq;->a(Landroid/view/View;)Lcom/estrongs/android/ui/b/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/aq;->a()Lcom/estrongs/android/ui/b/ag;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->a:Lcom/estrongs/android/ui/b/ag;

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->a:Lcom/estrongs/android/ui/b/ag;

    new-instance v1, Lcom/estrongs/android/ui/pcs/au;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/pcs/au;-><init>(Lcom/estrongs/android/ui/pcs/as;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0, v4}, Lcom/estrongs/android/ui/b/ag;->setCanceledOnTouchOutside(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/pcs/as;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    const v2, 0x7f0b0485

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    const v2, 0x7f0b0458

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smsto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "sms_body"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/estrongs/android/ui/pcs/as;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/estrongs/android/ui/pcs/av;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/ui/pcs/av;-><init>(Lcom/estrongs/android/ui/pcs/as;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/pcs/as;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/pcs/as;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    return-void
.end method
