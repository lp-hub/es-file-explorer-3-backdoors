.class Lcom/estrongs/android/ui/b/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/ui/view/aa;

.field final synthetic b:Lcom/estrongs/android/ui/b/dn;


# direct methods
.method constructor <init>(Lcom/estrongs/android/ui/b/dn;Lcom/estrongs/android/ui/view/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/dx;->b:Lcom/estrongs/android/ui/b/dn;

    iput-object p2, p0, Lcom/estrongs/android/ui/b/dx;->a:Lcom/estrongs/android/ui/view/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dx;->a:Lcom/estrongs/android/ui/view/aa;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/view/aa;->c()V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/dx;->b:Lcom/estrongs/android/ui/b/dn;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/estrongs/android/ui/b/dn;->a(Lcom/estrongs/android/ui/b/dn;Z)Z

    return-void
.end method
