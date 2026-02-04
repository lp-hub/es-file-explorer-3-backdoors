.class final Lcom/estrongs/android/pop/app/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/estrongs/android/ui/pcs/v;

.field final synthetic c:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/estrongs/android/ui/pcs/v;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/z;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/z;->b:Lcom/estrongs/android/ui/pcs/v;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/z;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/ui/pcs/x;

    iget-object v1, p0, Lcom/estrongs/android/pop/app/z;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/estrongs/android/ui/pcs/x;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/estrongs/android/pop/app/aa;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/app/aa;-><init>(Lcom/estrongs/android/pop/app/z;)V

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Lcom/estrongs/android/ui/pcs/ag;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/app/z;->c:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/ui/pcs/x;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/estrongs/android/ui/pcs/x;->a()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
