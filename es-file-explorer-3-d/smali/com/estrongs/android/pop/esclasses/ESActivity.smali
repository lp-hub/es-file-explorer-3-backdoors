.class public Lcom/estrongs/android/pop/esclasses/ESActivity;
.super Landroid/app/Activity;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static x()Landroid/app/Activity;
    .locals 3

    sget-object v1, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v2, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/estrongs/android/pop/esclasses/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/estrongs/android/pop/esclasses/b;-><init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method protected c(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public c(II)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/estrongs/android/pop/esclasses/ESActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->c(II)V

    return-void
.end method

.method public declared-synchronized getResources()Landroid/content/res/Resources;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/i;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/pop/esclasses/i;->a(Landroid/content/res/Resources;)Lcom/estrongs/android/pop/esclasses/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/pop/esclasses/i;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/esclasses/i;->a()V

    :try_start_0
    invoke-static {p0}, Lcom/estrongs/android/pop/esclasses/c;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v2, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/FexApplication;->c()V

    sget-object v2, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/estrongs/android/pop/esclasses/ESActivity;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setContentView(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setContentView(I)V

    new-instance v0, Lcom/estrongs/android/pop/esclasses/f;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/esclasses/f;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/esclasses/ESActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/estrongs/android/pop/esclasses/f;->a(ILandroid/view/View;)V

    return-void
.end method
