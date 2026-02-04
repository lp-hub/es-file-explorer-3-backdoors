.class public Lcom/estrongs/android/pop/app/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static h:Lcom/estrongs/android/pop/app/b/c;

.field private static k:Lcom/estrongs/fs/b/v;


# instance fields
.field protected a:Ljava/net/InetAddress;

.field protected b:Ljava/net/InetAddress;

.field private c:[I

.field private d:[I

.field private e:Z

.field private f:Lcom/estrongs/android/pop/app/b/f;

.field private g:Landroid/content/Context;

.field private i:Z

.field private j:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->c:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/b/c;->e:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/b/c;->i:Z

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c;->g:Landroid/content/Context;

    iput-boolean v3, p0, Lcom/estrongs/android/pop/app/b/c;->i:Z

    :try_start_0
    invoke-static {p1}, Lcom/estrongs/android/util/ai;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const-string v1, "255.255.255.0"

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/b/c;->i:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/net/InetAddress;Ljava/net/InetAddress;)V

    new-instance v0, Lcom/estrongs/android/pop/app/b/f;

    new-array v1, v4, [I

    const/16 v2, 0x1bd

    aput v2, v1, v3

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/b/f;-><init>(Lcom/estrongs/android/pop/app/b/c;[I)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:Lcom/estrongs/android/pop/app/b/f;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:Lcom/estrongs/android/pop/app/b/f;

    invoke-virtual {v0, p0}, Lcom/estrongs/android/pop/app/b/f;->addObserver(Ljava/util/Observer;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/estrongs/android/pop/app/b/c;->i:Z

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/b/c;
    .locals 1

    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->h:Lcom/estrongs/android/pop/app/b/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/pop/app/b/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/b/c;->h:Lcom/estrongs/android/pop/app/b/c;

    :goto_0
    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->h:Lcom/estrongs/android/pop/app/b/c;

    iput-object p0, v0, Lcom/estrongs/android/pop/app/b/c;->g:Landroid/content/Context;

    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->h:Lcom/estrongs/android/pop/app/b/c;

    :goto_1
    return-object v0

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->h:Lcom/estrongs/android/pop/app/b/c;

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->h:Lcom/estrongs/android/pop/app/b/c;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/estrongs/android/pop/app/b/c;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/estrongs/android/pop/app/b/c;->h:Lcom/estrongs/android/pop/app/b/c;

    goto :goto_0
.end method

.method private a(Ljava/net/InetAddress;)V
    .locals 4

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/c;->a:Ljava/net/InetAddress;

    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->c:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->g:Landroid/content/Context;

    const v1, 0x7f0b0201

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private a(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/net/InetAddress;)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    array-length v0, v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    iput-object p2, p0, Lcom/estrongs/android/pop/app/b/c;->b:Ljava/net/InetAddress;

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "([1-9]|[1-9]\\d|1\\d{2}|2[0-1]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    const v4, 0x7f0b0200

    const v3, 0x7f0b006d

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/estrongs/fs/b/ae;->a(Landroid/content/Context;)[B

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/estrongs/android/ui/b/ag;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0093

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setTitle(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/b/d;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/b/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/app/b/e;

    invoke-direct {v2}, Lcom/estrongs/android/pop/app/b/e;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/estrongs/android/ui/b/ag;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v1, 0x7f0b00e8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/b/ag;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/estrongs/android/pop/app/b/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/app/b/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/estrongs/android/pop/app/b/c;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0, v4, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v1, Lcom/estrongs/android/ui/b/fr;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/estrongs/android/pop/app/b/c;->k:Lcom/estrongs/fs/b/v;

    invoke-direct {v1, v0, v2, v3}, Lcom/estrongs/android/ui/b/fr;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/fr;->show()V

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Lcom/estrongs/android/pop/app/b/c;->i:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b0201

    invoke-static {p0, v0, v2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->e()V

    new-instance v0, Lcom/estrongs/fs/b/v;

    invoke-direct {v0}, Lcom/estrongs/fs/b/v;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/app/b/c;->k:Lcom/estrongs/fs/b/v;

    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->k:Lcom/estrongs/fs/b/v;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/fs/b/v;->setDescription(Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/ui/b/fr;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/estrongs/android/pop/app/b/c;->k:Lcom/estrongs/fs/b/v;

    invoke-direct {v1, v0, v2, v3}, Lcom/estrongs/android/ui/b/fr;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V

    invoke-virtual {v1}, Lcom/estrongs/android/ui/b/fr;->show()V

    sget-object v0, Lcom/estrongs/android/pop/app/b/c;->k:Lcom/estrongs/fs/b/v;

    invoke-virtual {v0}, Lcom/estrongs/fs/b/v;->execute()V

    goto :goto_0
.end method

.method private d()I
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    xor-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    xor-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    xor-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    xor-int/lit16 v3, v3, 0xff

    mul-int/lit16 v2, v2, 0xff

    add-int/2addr v2, v3

    mul-int/lit16 v1, v1, 0xff

    mul-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    mul-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0xff

    mul-int/lit16 v0, v0, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->f:Lcom/estrongs/android/pop/app/b/f;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/estrongs/android/pop/app/b/c;->e:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/b/c;->f:Lcom/estrongs/android/pop/app/b/f;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/b/f;->a()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->e:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:Lcom/estrongs/android/pop/app/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:Lcom/estrongs/android/pop/app/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/f;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()Ljava/util/Vector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/c;->d()I

    move-result v3

    const/4 v0, 0x4

    new-array v4, v0, [B

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/b/c;->c:[I

    aget v5, v5, v0

    iget-object v6, p0, Lcom/estrongs/android/pop/app/b/c;->d:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_2

    const/4 v0, 0x3

    :try_start_0
    aget-byte v5, v4, v0

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    const/4 v0, 0x3

    aget-byte v0, v4, v0

    iget-object v5, p0, Lcom/estrongs/android/pop/app/b/c;->c:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    if-ne v0, v5, :cond_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/c;->f:Lcom/estrongs/android/pop/app/b/f;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/b/f;->run()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/b/c;->j:Z

    return-void
.end method

.method protected c()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/b/c;->f()V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 4

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/estrongs/android/pop/app/b/h;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/estrongs/android/pop/app/b/h;

    iget-object v0, p2, Lcom/estrongs/android/pop/app/b/h;->b:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcom/estrongs/android/pop/app/b/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljcifs/netbios/NbtAddress;->getByName(Ljava/lang/String;)Ljcifs/netbios/NbtAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljcifs/netbios/NbtAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/b/c;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/estrongs/android/pop/app/b/h;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string v1, "IP Scan"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get host name by NbtAddress - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/b/c;->c()V

    goto :goto_1
.end method
