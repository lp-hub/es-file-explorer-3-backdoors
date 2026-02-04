.class Lcom/estrongs/android/ui/h/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/h/h;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/h/h;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/h/k;->a:Lcom/estrongs/android/ui/h/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/h/k;->a:Lcom/estrongs/android/ui/h/h;

    invoke-static {v0}, Lcom/estrongs/android/ui/h/h;->h(Lcom/estrongs/android/ui/h/h;)Lcom/estrongs/android/ui/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/ui/h/c;->h()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
