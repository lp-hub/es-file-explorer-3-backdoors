.class public Lcom/estrongs/android/ui/view/z;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/widget/Toast;


# direct methods
.method public static a(Landroid/content/Context;II)Landroid/widget/Toast;
    .locals 1

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/FexApplication;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/estrongs/android/ui/view/z;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 2

    const-class v1, Lcom/estrongs/android/ui/view/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/estrongs/android/ui/view/z;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/estrongs/android/ui/view/z;->a:Landroid/widget/Toast;

    :goto_0
    sget-object v0, Lcom/estrongs/android/ui/view/z;->a:Landroid/widget/Toast;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/estrongs/android/ui/view/z;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/estrongs/android/ui/view/z;->a:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
