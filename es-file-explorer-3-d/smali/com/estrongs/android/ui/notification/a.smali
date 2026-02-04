.class public Lcom/estrongs/android/ui/notification/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/estrongs/android/pop/app/AudioPlayerService;

.field private b:Z

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/AudioPlayerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/a;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/a;->b()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/a;->b:Z

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/a;->b()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/a;->c()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    const v1, 0x7f020019

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    if-eqz p1, :cond_1

    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const-class v3, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0, v2, p1, p2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/16 v2, 0x302d

    invoke-virtual {v1, v2, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v2, 0x7f0b009c

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x7f080059

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030009

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->D()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/high16 v3, 0x42800000    # 64.0f

    invoke-static {v2, v3}, Lcom/estrongs/android/ui/d/a;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-static {v1, v2}, Lcom/estrongs/android/ui/d/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const v2, 0x7f080054

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    const v2, 0x7f080056

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v2, 0x7f080058

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/a;->d()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/a;->e()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v2, 0x7f08005a

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/a;->f()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    const v2, 0x7f080057

    invoke-virtual {p0}, Lcom/estrongs/android/ui/notification/a;->g()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v2}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v2

    if-nez v2, :cond_1

    const v2, 0x7f020016

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_0
    new-instance v2, Lcom/estrongs/android/ui/notification/c;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/estrongs/android/ui/notification/c;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/notification/c;->a(Landroid/widget/RemoteViews;)V

    invoke-virtual {v2, v5}, Lcom/estrongs/android/ui/notification/c;->a(Z)V

    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const-class v4, Lcom/estrongs/android/pop/app/PopAudioPlayer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0, v5}, Lcom/estrongs/android/ui/notification/c;->a(Landroid/content/Intent;Z)V

    const v0, 0x7f020156

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/notification/c;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v3}, Lcom/estrongs/android/pop/app/AudioPlayerService;->C()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/ui/notification/c;->a(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Lcom/estrongs/android/ui/notification/c;->d()Landroid/app/Notification;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/16 v3, 0x302d

    invoke-virtual {v2, v3, v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->c:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_2
    iput-object v1, p0, Lcom/estrongs/android/ui/notification/a;->c:Landroid/graphics/Bitmap;

    return-void

    :cond_1
    const v2, 0x7f020017

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v1

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/notification/a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->B()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/app/AudioPlayerService;->m()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0b0082

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/estrongs/android/ui/notification/a;->a(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/estrongs/android/pop/FexApplication;->a()Lcom/estrongs/android/pop/FexApplication;

    move-result-object v0

    const v2, 0x7f0b0084

    invoke-virtual {v0, v2}, Lcom/estrongs/android/pop/FexApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public d()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.audio.control.preview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.audio.control.play"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.audio.control.next"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.estrongs.action.audio.control.close"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/notification/a;->b:Z

    return v0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/a;->a:Lcom/estrongs/android/pop/app/AudioPlayerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/AudioPlayerService;->stopForeground(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/notification/a;->b:Z

    return-void
.end method
