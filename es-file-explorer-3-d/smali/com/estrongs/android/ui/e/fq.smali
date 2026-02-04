.class final Lcom/estrongs/android/ui/e/fq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/estrongs/fs/g;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/widget/EditText;

.field final synthetic e:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/estrongs/fs/g;Ljava/lang/String;Landroid/widget/EditText;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/e/fq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/estrongs/android/ui/e/fq;->b:Lcom/estrongs/fs/g;

    iput-object p3, p0, Lcom/estrongs/android/ui/e/fq;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/estrongs/android/ui/e/fq;->d:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/estrongs/android/ui/e/fq;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/ui/e/fq;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/estrongs/android/ui/e/fq;->b:Lcom/estrongs/fs/g;

    iget-object v2, p0, Lcom/estrongs/android/ui/e/fq;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/estrongs/android/ui/e/fq;->d:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/estrongs/android/ui/e/fq;->e:Landroid/content/DialogInterface$OnDismissListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/estrongs/android/ui/e/fk;->a(Landroid/content/Context;Lcom/estrongs/fs/g;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
