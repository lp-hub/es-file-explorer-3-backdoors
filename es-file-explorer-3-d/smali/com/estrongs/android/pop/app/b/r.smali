.class Lcom/estrongs/android/pop/app/b/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/b/q;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/b/r;->a:Lcom/estrongs/android/pop/app/b/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/b/q;->a(Landroid/content/Intent;)V

    return-void
.end method
