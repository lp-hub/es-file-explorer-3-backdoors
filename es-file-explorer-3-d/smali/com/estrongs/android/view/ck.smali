.class public Lcom/estrongs/android/view/ck;
.super Lcom/estrongs/android/view/ar;


# instance fields
.field a:Z

.field private ac:Landroid/widget/ImageView;

.field private ah:Landroid/widget/TextView;

.field private ai:Landroid/widget/EditText;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/Button;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/net/wifi/WifiManager;

.field private an:Landroid/content/IntentFilter;

.field private ao:Landroid/content/IntentFilter;

.field private ap:Landroid/content/BroadcastReceiver;

.field private aq:Landroid/content/BroadcastReceiver;

.field private ar:Z

.field private as:Z

.field private b:Landroid/view/View;

.field private c:Lcom/estrongs/android/ui/theme/al;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/estrongs/android/view/ar;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/estrongs/fs/c/a/a;Lcom/estrongs/android/view/bs;)V

    iput-boolean v0, p0, Lcom/estrongs/android/view/ck;->ar:Z

    iput-boolean v0, p0, Lcom/estrongs/android/view/ck;->as:Z

    iput-boolean v0, p0, Lcom/estrongs/android/view/ck;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ck;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    return-object v0
.end method

.method private a(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/estrongs/android/view/ck;->as:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/estrongs/android/view/ck;->c(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->o()V

    :cond_0
    iput-boolean v1, p0, Lcom/estrongs/android/view/ck;->ar:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ck;->ar:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/view/ck;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ck;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ck;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ck;->b(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ck;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ck;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ck;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/view/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/view/ck;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/ck;->c(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->al:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0201bf

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    const v1, 0x7f0b0155

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->aj:Landroid/widget/TextView;

    const v1, 0x7f0b0158

    invoke-virtual {p0, v1}, Lcom/estrongs/android/view/ck;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ai:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ai:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method private b(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "WIFI_AP_STATE_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "WIFI_AP_STATE_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    if-ne p1, v0, :cond_1

    const v0, 0x7f0b03bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ck;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->b(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->n()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/view/ck;->as:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/estrongs/android/view/ck;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->c(Z)V

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->o()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/ck;->as:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "newState"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->a(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_2
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->a(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/estrongs/android/view/ck;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->al:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0201bf

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    const v1, 0x7f0b0154

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->aj:Landroid/widget/TextView;

    const v1, 0x7f0b0157

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ai:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/view/ck;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/view/ck;->as:Z

    return v0
.end method

.method static synthetic c(Lcom/estrongs/android/view/ck;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->S()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->T()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->U()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->V()I

    move-result v5

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v2

    iget-object v7, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    new-instance v0, Lcom/estrongs/android/view/cp;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/estrongs/android/view/cp;-><init>(Lcom/estrongs/android/view/ck;Lcom/estrongs/android/ftp/k;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v7, v0}, Lcom/estrongs/android/ftp/k;->a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ck;->a(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/estrongs/android/view/ck;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic e(Lcom/estrongs/android/view/ck;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->o()V

    return-void
.end method

.method private n()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    new-instance v2, Lcom/estrongs/android/view/co;

    invoke-direct {v2, p0, v0}, Lcom/estrongs/android/view/co;-><init>(Lcom/estrongs/android/view/ck;Lcom/estrongs/android/ftp/k;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ftp/k;->a(Landroid/content/Context;Lcom/estrongs/android/ftp/m;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private o()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/view/ck;->a:Z

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->al:Landroid/widget/TextView;

    const v1, 0x7f0b0156

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0201be

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->aj:Landroid/widget/TextView;

    const v1, 0x7f0b0157

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ai:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const v0, 0x7f0b0097

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ck;->m(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "ESFtpServer"

    const-string v1, "Failed to closeFtpServer - context is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/estrongs/android/ftp/k;->a()Lcom/estrongs/android/ftp/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/estrongs/android/ftp/k;->c()V

    iget-boolean v0, p0, Lcom/estrongs/android/view/ck;->as:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b03bd

    invoke-virtual {p0, v0}, Lcom/estrongs/android/view/ck;->m(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->p()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/view/ck;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a_()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->a_()V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->ap:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->aq:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method protected i()V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/ui/theme/al;->a(Landroid/content/Context;)Lcom/estrongs/android/ui/theme/al;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->g:Lcom/estrongs/android/widget/HeaderGridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/estrongs/android/widget/HeaderGridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03004d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/HeaderGridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->g:Lcom/estrongs/android/widget/HeaderGridView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    const v1, 0x7f0801f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->ac:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ac:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    const v2, 0x7f0201be

    invoke-virtual {v1, v2}, Lcom/estrongs/android/ui/theme/al;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    const v1, 0x7f0801ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->ah:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ah:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    const v1, 0x7f0800f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->al:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->al:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    const v1, 0x7f0801f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->aj:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->aj:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->c:Lcom/estrongs/android/ui/theme/al;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/theme/al;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    const v1, 0x7f0801f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ak:Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/view/cl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/view/cl;-><init>(Lcom/estrongs/android/view/ck;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->b:Landroid/view/View;

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->ai:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ai:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->an:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->an:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->an:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->an:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Lcom/estrongs/android/view/cm;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cm;-><init>(Lcom/estrongs/android/view/ck;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->ap:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->ap:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/estrongs/android/view/ck;->an:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    new-instance v0, Lcom/estrongs/android/view/cn;

    invoke-direct {v0, p0}, Lcom/estrongs/android/view/cn;-><init>(Lcom/estrongs/android/view/ck;)V

    iput-object v0, p0, Lcom/estrongs/android/view/ck;->aq:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "WIFI_AP_STATE_CHANGED_ACTION"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/view/ck;->am:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "ACTION_TETHER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/estrongs/android/view/ck;->ao:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->ao:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/view/ck;->ad:Landroid/app/Activity;

    iget-object v1, p0, Lcom/estrongs/android/view/ck;->aq:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/estrongs/android/view/ck;->ao:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->n()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public l()V
    .locals 0

    invoke-super {p0}, Lcom/estrongs/android/view/ar;->l()V

    invoke-direct {p0}, Lcom/estrongs/android/view/ck;->n()V

    return-void
.end method
