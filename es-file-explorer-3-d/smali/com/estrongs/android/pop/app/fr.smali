.class Lcom/estrongs/android/pop/app/fr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/estrongs/android/widget/g;

.field final synthetic b:Lcom/estrongs/android/pop/app/fp;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fp;Lcom/estrongs/android/widget/g;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fr;->b:Lcom/estrongs/android/pop/app/fp;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/fr;->a:Lcom/estrongs/android/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fr;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->i()V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fr;->a:Lcom/estrongs/android/widget/g;

    invoke-virtual {v0}, Lcom/estrongs/android/widget/g;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/app/fr;->b:Lcom/estrongs/android/pop/app/fp;

    iget-object v1, v1, Lcom/estrongs/android/pop/app/fp;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
