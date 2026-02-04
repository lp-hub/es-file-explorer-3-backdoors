.class Lcom/estrongs/android/ui/c/q;
.super Lcom/estrongs/android/view/cq;


# instance fields
.field public a:Lcom/estrongs/android/ui/b/ag;

.field protected b:Lcom/estrongs/fs/g;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/estrongs/android/pop/esclasses/ESActivity;Lcom/estrongs/fs/g;)V
    .locals 8

    const/4 v0, 0x0

    const v7, 0x7f080167

    invoke-direct {p0, p1}, Lcom/estrongs/android/view/cq;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/c/q;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/estrongs/android/ui/c/q;->b:Lcom/estrongs/fs/g;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/c/q;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/estrongs/android/ui/c/q;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/estrongs/android/ui/c/q;->b:Lcom/estrongs/fs/g;

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/q;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/q;->c:Ljava/lang/String;

    const v0, 0x7f0b0060

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/q;->n(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/ui/c/q;->d:Ljava/lang/String;

    const-string v0, "task"

    invoke-interface {p2, v0}, Lcom/estrongs/fs/g;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/estrongs/a/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const v0, 0x7f080165

    iget-object v2, p0, Lcom/estrongs/android/ui/c/q;->c:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/estrongs/android/ui/c/q;->a(ILjava/lang/String;)V

    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/q;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/pop/netfs/utils/TypeUtils;->getFileType(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/estrongs/android/d/d;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "target"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->aY(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f080022

    const-string v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/c/q;->a(ILjava/lang/String;)V

    invoke-direct {p0, v7, v2}, Lcom/estrongs/android/ui/c/q;->a(ILjava/lang/String;)V

    const-string v0, "size"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const v0, 0x7f080025

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->c(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3, v4}, Lcom/estrongs/fs/c/d;->d(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b0101

    invoke-virtual {p0, v4}, Lcom/estrongs/android/ui/c/q;->n(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/estrongs/android/ui/c/q;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/c/q;->ad:Landroid/app/Activity;

    invoke-static {v0}, Lcom/estrongs/android/pop/q;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/q;->I()Ljava/text/DateFormat;

    move-result-object v3

    sget-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->M:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, " HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_0
    new-instance v4, Ljava/util/Date;

    const-string v5, "start_time"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f08016a

    invoke-direct {p0, v3, v0}, Lcom/estrongs/android/ui/c/q;->a(ILjava/lang/String;)V

    const v0, 0x7f08016c

    const-string v3, "source"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/estrongs/android/ui/c/q;->a(ILjava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/ui/c/q;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<a href=\"ss\">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</a>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    new-instance v1, Lcom/estrongs/android/ui/c/r;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/c/r;-><init>(Lcom/estrongs/android/ui/c/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080168

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/q;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/c/s;

    invoke-direct {v1, p0, v2}, Lcom/estrongs/android/ui/c/s;-><init>(Lcom/estrongs/android/ui/c/q;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08016d

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/c/q;->l(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/estrongs/android/ui/c/t;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/c/t;-><init>(Lcom/estrongs/android/ui/c/q;Lcom/estrongs/android/pop/esclasses/ESActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, " hh:mm:ss a"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/q;I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/c/q;->l(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/estrongs/android/ui/c/q;->l(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/c/q;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/c/q;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/estrongs/android/ui/c/q;->a:Lcom/estrongs/android/ui/b/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/c/q;->a:Lcom/estrongs/android/ui/b/ag;

    invoke-virtual {v0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->E()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const v0, 0x7f03003b

    return v0
.end method
