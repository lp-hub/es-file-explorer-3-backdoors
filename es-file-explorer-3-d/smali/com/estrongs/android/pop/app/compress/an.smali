.class public Lcom/estrongs/android/pop/app/compress/an;
.super Landroid/app/ProgressDialog;


# instance fields
.field a:Z

.field private b:Lcom/estrongs/io/archive/h;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/String;

.field private e:Lcom/estrongs/io/model/ArchiveEntryFile;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/estrongs/io/archive/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/compress/an;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/an;->g:Z

    iput-object p2, p0, Lcom/estrongs/android/pop/app/compress/an;->c:Landroid/os/Handler;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/compress/an;->b:Lcom/estrongs/io/archive/h;

    const v0, 0x7f0b01c2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/compress/an;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/compress/an;->setProgressStyle(I)V

    const v0, 0x7f0b0007

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/compress/ao;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/compress/ao;-><init>(Lcom/estrongs/android/pop/app/compress/an;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/compress/an;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/an;)Lcom/estrongs/io/model/ArchiveEntryFile;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/compress/an;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/compress/an;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/compress/an;)Lcom/estrongs/io/archive/h;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->b:Lcom/estrongs/io/archive/h;

    return-object v0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/compress/an;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/compress/an;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/compress/an;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/estrongs/io/model/ArchiveEntryFile;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/an;->e:Lcom/estrongs/io/model/ArchiveEntryFile;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/an;->f:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/compress/an;->g:Z

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/compress/an;->d:Ljava/lang/String;

    return-void
.end method

.method public onStart()V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/app/compress/ap;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/compress/ap;-><init>(Lcom/estrongs/android/pop/app/compress/an;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/compress/ap;->start()V

    return-void
.end method
