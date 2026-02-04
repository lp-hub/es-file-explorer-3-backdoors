.class Lcom/estrongs/android/view/cm;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/estrongs/android/view/ck;


# direct methods
.method constructor <init>(Lcom/estrongs/android/view/ck;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/view/cm;->a:Lcom/estrongs/android/view/ck;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/view/cm;->a:Lcom/estrongs/android/view/ck;

    invoke-static {v0, p2}, Lcom/estrongs/android/view/ck;->a(Lcom/estrongs/android/view/ck;Landroid/content/Intent;)V

    return-void
.end method
