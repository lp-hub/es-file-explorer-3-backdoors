.class Lcom/estrongs/android/pop/app/a/x;
.super Lcom/estrongs/android/ui/b/ag;


# instance fields
.field final synthetic a:Lcom/estrongs/android/pop/app/a/a;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/app/a/a;Landroid/content/Context;)V
    .locals 7

    iput-object p1, p0, Lcom/estrongs/android/pop/app/a/x;->a:Lcom/estrongs/android/pop/app/a/a;

    invoke-direct {p0, p2}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/x;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/x;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {p2}, Lcom/estrongs/android/pop/esclasses/e;->a(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080088

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-static {p2}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->ay()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    const v0, 0x7f0800f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0b03e8

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/app/a/x;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/estrongs/android/pop/app/a/y;

    invoke-direct {v0, p0, p1, v3}, Lcom/estrongs/android/pop/app/a/y;-><init>(Lcom/estrongs/android/pop/app/a/x;Lcom/estrongs/android/pop/app/a/a;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/x;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/estrongs/android/pop/app/a/z;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/pop/app/a/z;-><init>(Lcom/estrongs/android/pop/app/a/x;Lcom/estrongs/android/pop/app/a/a;Landroid/widget/CheckBox;ZLandroid/content/Context;)V

    invoke-virtual {p0, v6, v0}, Lcom/estrongs/android/pop/app/a/x;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/app/a/x;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/app/a/aa;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/pop/app/a/aa;-><init>(Lcom/estrongs/android/pop/app/a/x;Lcom/estrongs/android/pop/app/a/a;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/pop/app/a/x;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    return-void
.end method
