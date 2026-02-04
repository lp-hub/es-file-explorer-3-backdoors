.class Landroid/support/v4/app/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/app/x;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/w;)Landroid/app/Notification;
    .locals 5

    iget-object v0, p1, Landroid/support/v4/app/w;->j:Landroid/app/Notification;

    iget-object v1, p1, Landroid/support/v4/app/w;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/app/w;->b:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/w;->c:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/w;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method
