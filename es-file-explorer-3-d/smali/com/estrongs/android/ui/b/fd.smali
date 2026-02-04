.class Lcom/estrongs/android/ui/b/fd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/b/fa;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/fa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/fd;->a:Lcom/estrongs/android/ui/b/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/fd;->a:Lcom/estrongs/android/ui/b/fa;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/fa;->c:Lcom/estrongs/android/ui/b/ey;

    iget-object v0, v0, Lcom/estrongs/android/ui/b/ey;->a:Lcom/estrongs/android/ui/b/ew;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ew;->dismiss()V

    return-void
.end method
