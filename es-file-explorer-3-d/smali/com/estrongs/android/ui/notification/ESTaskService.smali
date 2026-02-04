.class public Lcom/estrongs/android/ui/notification/ESTaskService;
.super Landroid/app/Service;


# instance fields
.field private a:Lcom/estrongs/android/ui/notification/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/estrongs/android/ui/notification/b;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/notification/b;-><init>(Lcom/estrongs/android/ui/notification/ESTaskService;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->a:Lcom/estrongs/android/ui/notification/b;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/notification/ESTaskService;->a:Lcom/estrongs/android/ui/notification/b;

    return-object v0
.end method
