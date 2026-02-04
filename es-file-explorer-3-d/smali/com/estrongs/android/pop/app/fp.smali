.class Lcom/estrongs/android/pop/app/fp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/estrongs/android/pop/app/fm;


# direct methods
.method constructor <init>(Lcom/estrongs/android/pop/app/fm;Ljava/lang/String;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/pop/app/fp;->c:Lcom/estrongs/android/pop/app/fm;

    iput-object p2, p0, Lcom/estrongs/android/pop/app/fp;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/pop/app/fp;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fp;->c:Lcom/estrongs/android/pop/app/fm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->p()Z

    move-result v0

    new-instance v1, Lcom/estrongs/android/pop/app/fq;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/app/fq;-><init>(Lcom/estrongs/android/pop/app/fp;Z)V

    new-instance v2, Lcom/estrongs/android/widget/g;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fp;->c:Lcom/estrongs/android/pop/app/fm;

    iget-object v3, v0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fp;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/estrongs/android/pop/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/estrongs/android/widget/g;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/fs/h;Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fp;->c:Lcom/estrongs/android/pop/app/fm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/estrongs/android/widget/g;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fp;->c:Lcom/estrongs/android/pop/app/fm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/fr;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/fr;-><init>(Lcom/estrongs/android/pop/app/fp;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/widget/g;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/app/fp;->c:Lcom/estrongs/android/pop/app/fm;

    iget-object v0, v0, Lcom/estrongs/android/pop/app/fm;->a:Lcom/estrongs/android/pop/app/PopPreferenceActivity;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/app/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/fs;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/pop/app/fs;-><init>(Lcom/estrongs/android/pop/app/fp;Lcom/estrongs/android/widget/g;)V

    invoke-virtual {v2, v0, v1}, Lcom/estrongs/android/widget/g;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v2}, Lcom/estrongs/android/widget/g;->h()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/pop/app/fp;->a:Ljava/lang/String;

    goto :goto_0
.end method
