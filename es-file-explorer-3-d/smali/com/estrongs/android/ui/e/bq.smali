.class public Lcom/estrongs/android/ui/e/bq;
.super Lcom/estrongs/android/ui/e/gq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/estrongs/android/ui/e/gq;-><init>(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/estrongs/android/ui/e/bq;->h()V

    return-void
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/estrongs/android/ui/e/bq;->b:Landroid/content/Context;

    check-cast v0, Lcom/estrongs/android/pop/app/LocalFileSharingActivity;

    const v1, 0x7f0b002a

    const v2, 0x7f020276

    new-instance v3, Lcom/estrongs/android/ui/e/br;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/br;-><init>(Lcom/estrongs/android/ui/e/bq;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/bq;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0b0026

    const v2, 0x7f020254

    new-instance v3, Lcom/estrongs/android/ui/e/bs;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/bs;-><init>(Lcom/estrongs/android/ui/e/bq;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/bq;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    const v1, 0x7f0b001d

    const v2, 0x7f020257

    new-instance v3, Lcom/estrongs/android/ui/e/bt;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/ui/e/bt;-><init>(Lcom/estrongs/android/ui/e/bq;Lcom/estrongs/android/pop/app/LocalFileSharingActivity;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/estrongs/android/ui/e/bq;->a(IILandroid/view/MenuItem$OnMenuItemClickListener;)Lcom/estrongs/android/view/a/a;

    return-void
.end method
