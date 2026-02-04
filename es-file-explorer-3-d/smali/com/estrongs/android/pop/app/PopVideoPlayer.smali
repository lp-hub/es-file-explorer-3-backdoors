.class public Lcom/estrongs/android/pop/app/PopVideoPlayer;
.super Lcom/estrongs/android/pop/esclasses/ESActivity;

# interfaces
.implements Lcom/estrongs/android/ui/e/gh;


# instance fields
.field private A:Lcom/estrongs/android/ui/e/fi;

.field private B:Lcom/estrongs/android/view/a/a;

.field private C:Lcom/estrongs/android/view/a/a;

.field private D:Lcom/estrongs/android/view/a/a;

.field private E:Landroid/graphics/Rect;

.field a:Z

.field b:Z

.field protected c:Landroid/widget/ImageView;

.field d:Z

.field e:Z

.field f:Z

.field g:Lcom/estrongs/android/pop/app/i;

.field h:Ljava/lang/Boolean;

.field i:Z

.field private j:Lcom/estrongs/fs/d;

.field private k:Landroid/widget/VideoView;

.field private l:Landroid/widget/MediaController;

.field private m:I

.field private n:Landroid/net/Uri;

.field private o:Lcom/estrongs/android/util/a;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/os/Handler;

.field private final s:Landroid/content/BroadcastReceiver;

.field private final t:Landroid/content/BroadcastReceiver;

.field private final u:Landroid/content/BroadcastReceiver;

.field private v:Z

.field private final w:I

.field private final x:I

.field private y:Ljava/lang/Object;

.field private z:Lcom/estrongs/android/ui/e/gc;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;-><init>()V

    invoke-static {p0}, Lcom/estrongs/fs/d;->a(Landroid/content/Context;)Lcom/estrongs/fs/d;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Lcom/estrongs/fs/d;

    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    iput-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a:Z

    iput-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Lcom/estrongs/android/util/a;

    new-instance v0, Lcom/estrongs/android/pop/app/gp;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/gp;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/app/gy;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/gy;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->s:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    new-instance v0, Lcom/estrongs/android/pop/app/gz;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/gz;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/estrongs/android/pop/app/ha;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/ha;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Z

    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->w:I

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->x:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    iput-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Lcom/estrongs/android/pop/app/i;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Ljava/lang/Boolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/VideoView;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    return-object v0
.end method

.method private a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v0, "http"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "127.0.0.1"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->t()Lcom/estrongs/android/view/ar;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/estrongs/android/view/ar;->a(ZZ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/app/PopVideoPlayer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    return-object v0
.end method

.method private b()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "http://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "127.0.0.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->be(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/estrongs/android/pop/app/StreamingMediaPlayer;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Market"

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Lcom/estrongs/android/pop/app/i;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/app/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/pop/app/i;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/app/AudioPlayerService;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Lcom/estrongs/android/pop/app/i;

    :cond_2
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Lcom/estrongs/android/pop/app/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/i;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Ljava/lang/Boolean;

    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Market"

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Lcom/estrongs/android/pop/app/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->y:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->g:Lcom/estrongs/android/pop/app/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/i;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->h:Ljava/lang/Boolean;

    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f()Z

    move-result v0

    return v0
.end method

.method private e()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "smb://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    new-instance v0, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    iget-boolean v4, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->r:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic e(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Z

    return v0
.end method

.method static synthetic f(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/view/View;

    return-object v0
.end method

.method private f()Z
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/android/ui/e/gc;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    return-object v0
.end method

.method static synthetic i(Lcom/estrongs/android/pop/app/PopVideoPlayer;)Lcom/estrongs/fs/d;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->j:Lcom/estrongs/fs/d;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    if-nez v0, :cond_2

    new-instance v0, Lcom/estrongs/android/pop/app/gq;

    invoke-direct {v0, p0, p0, v1, v1}, Lcom/estrongs/android/pop/app/gq;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    new-instance v0, Lcom/estrongs/android/ui/e/fi;

    invoke-direct {v0, p0, v1}, Lcom/estrongs/android/ui/e/fi;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:Lcom/estrongs/android/ui/e/fi;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:Lcom/estrongs/android/ui/e/fi;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gc;->a(Lcom/estrongs/android/ui/e/fi;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:Lcom/estrongs/android/ui/e/fi;

    invoke-virtual {v1}, Lcom/estrongs/android/ui/e/fi;->c()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gc;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    new-instance v1, Lcom/estrongs/android/pop/app/gr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gr;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gc;->a(Lcom/estrongs/android/ui/e/gg;)V

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020250

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b021b

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/gs;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gs;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020249

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/gt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gt;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/view/a/a;

    new-instance v0, Lcom/estrongs/android/view/a/a;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020258

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0b0037

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/estrongs/android/view/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    new-instance v1, Lcom/estrongs/android/pop/app/gx;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/gx;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/view/a/a;->a(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D:Lcom/estrongs/android/view/a/a;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->A:Lcom/estrongs/android/ui/e/fi;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/fi;->b()Lcom/estrongs/android/ui/e/gq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gq;->j()V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "http"

    iget-object v3, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->D:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v2}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_0
    const-string v2, "Market"

    const-string v3, "Sharp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->C:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->B:Lcom/estrongs/android/view/a/a;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/e/gq;->a(Lcom/estrongs/android/view/a/a;)V

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->c()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Landroid/widget/ImageView;

    const v1, 0x7f020264

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->z:Lcom/estrongs/android/ui/e/gc;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/e/gc;->d()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->setDefaultKeyMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d0

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f030098

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->setContentView(I)V

    new-instance v0, Lcom/estrongs/android/pop/app/hb;

    invoke-direct {v0, p0, p0}, Lcom/estrongs/android/pop/app/hb;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    const v0, 0x7f0802ec

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->requestFocus()Z

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    new-instance v2, Lcom/estrongs/android/pop/app/hc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/hc;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    new-instance v2, Lcom/estrongs/android/pop/app/hd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/app/hd;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->n:Landroid/net/Uri;

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->finish()V

    :goto_0
    return-void

    :cond_0
    iput v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    iput-boolean v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    const-string v0, "Market"

    const-string v2, "Spreadtrum"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->s:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_PRESENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c()V

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e()V

    const-string v0, "PopVideoPlayer"

    invoke-static {p0, v1, v0}, Lcom/estrongs/android/util/a;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/estrongs/android/util/a;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Lcom/estrongs/android/util/a;

    const v0, 0x7f0802ed

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/view/View;

    const v2, 0x7f0802ee

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->q:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShown()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->p:Landroid/view/View;

    const v1, 0x7f080235

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/estrongs/android/pop/app/hf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/hf;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3
    new-instance v0, Lcom/estrongs/android/pop/app/hg;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/app/hg;-><init>(Lcom/estrongs/android/pop/app/PopVideoPlayer;)V

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/hg;->start()V

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d()V

    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->s:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onDestroy()V

    invoke-static {}, Lcom/estrongs/android/util/m;->b()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_0
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->v:Z

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->l:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->a()V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onPause()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->c()V

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "playback_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    return-void
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onResume()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->o:Lcom/estrongs/android/util/a;

    invoke-virtual {v0}, Lcom/estrongs/android/util/a;->b()V

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    new-instance v0, Lcom/estrongs/android/util/aj;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-direct {v0, v1}, Lcom/estrongs/android/util/aj;-><init>(Ljava/lang/Object;)V

    const-string v1, "resume"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/util/aj;->a(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/estrongs/android/pop/p;->a()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    iget v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_0
    const-string v0, "Market"

    const-string v1, "Spreadtrum"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->i:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e:Z

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->b:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->f:Z

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->e()V

    iput v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    iput-boolean v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "playback_position"

    iget v1, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->m:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/estrongs/android/util/m;->b()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->k:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->onStop()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public q()Landroid/graphics/Rect;
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const v1, 0x7f0802ef

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/PopVideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v0, v5

    aget v4, v0, v7

    aget v5, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v5, v6

    aget v0, v0, v7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/PopVideoPlayer;->E:Landroid/graphics/Rect;

    return-object v0
.end method
