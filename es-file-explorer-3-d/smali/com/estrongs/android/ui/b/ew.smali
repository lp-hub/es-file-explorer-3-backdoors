.class public Lcom/estrongs/android/ui/b/ew;
.super Lcom/estrongs/android/ui/b/ag;


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/estrongs/android/ui/notification/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Z

.field private c:Z

.field public f:Landroid/content/DialogInterface$OnClickListener;

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/estrongs/a/a/k;

.field private m:Landroid/content/DialogInterface$OnDismissListener;

.field private n:Landroid/content/DialogInterface$OnClickListener;

.field private o:Landroid/content/DialogInterface$OnClickListener;

.field private p:Landroid/content/DialogInterface$OnClickListener;

.field private q:Lcom/estrongs/android/view/af;

.field private r:Lcom/estrongs/a/a;

.field private s:Landroid/os/Handler;

.field private t:Lcom/estrongs/android/ui/notification/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/estrongs/android/ui/b/ew;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;Z)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/estrongs/android/ui/b/ew;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/estrongs/a/a;ZZ)V
    .locals 7

    const v6, 0x7f0b0310

    const v5, 0x7f0b0040

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/ew;->b:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/ew;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/ew;->g:J

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/ew;->h:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/ew;->i:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/ew;->j:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/ew;->k:Z

    new-instance v0, Lcom/estrongs/android/ui/b/ey;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/ey;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->l:Lcom/estrongs/a/a/k;

    iput-object p3, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iput-boolean p4, p0, Lcom/estrongs/android/ui/b/ew;->i:Z

    iput-boolean p5, p0, Lcom/estrongs/android/ui/b/ew;->j:Z

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ew;->a:Landroid/app/Activity;

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/ew;->h:Z

    invoke-virtual {p0, v3}, Lcom/estrongs/android/ui/b/ew;->setCancelable(Z)V

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->summary()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "target"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v1}, Lcom/estrongs/android/util/ak;->ao(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/estrongs/android/util/ak;->bv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/estrongs/android/ui/b/ew;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/g;

    invoke-direct {v0, p1}, Lcom/estrongs/android/pop/g;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1, v0}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    new-instance v0, Lcom/estrongs/android/ui/b/ex;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/ex;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->n:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/b/fj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/fj;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->f:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/b/fk;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/fk;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->o:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/estrongs/android/ui/b/fl;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/fl;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->p:Landroid/content/DialogInterface$OnClickListener;

    if-eqz p5, :cond_5

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/fm;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/fm;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0007

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/fn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/fn;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    iget-object v1, v1, Lcom/estrongs/android/view/af;->c:Lcom/estrongs/a/a/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->addProgressListener(Lcom/estrongs/a/a/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->l:Lcom/estrongs/a/a/k;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->addTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iget-object v0, v0, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    iget-object v0, v0, Lcom/estrongs/android/view/af;->c:Lcom/estrongs/a/a/h;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iget-object v2, v2, Lcom/estrongs/a/a;->processData:Lcom/estrongs/a/a/i;

    invoke-interface {v0, v1, v2}, Lcom/estrongs/a/a/h;->a(Lcom/estrongs/a/a;Lcom/estrongs/a/a/i;)V

    :cond_2
    if-eqz p5, :cond_8

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskResult()Lcom/estrongs/a/p;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ew;->a(Lcom/estrongs/a/p;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/i;

    if-eqz v1, :cond_6

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/b/fo;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/fo;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ew;->f()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v1, v1, Lcom/estrongs/fs/b/y;

    if-eqz v1, :cond_4

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0011

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ew;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ew;->g()V

    goto :goto_2
.end method

.method public constructor <init>(Lcom/estrongs/android/pop/app/ShowDialogActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    const/16 v5, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ag;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/ew;->b:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/ew;->c:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/ew;->g:J

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/ew;->h:Z

    iput-boolean v3, p0, Lcom/estrongs/android/ui/b/ew;->i:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/ew;->j:Z

    iput-boolean v4, p0, Lcom/estrongs/android/ui/b/ew;->k:Z

    new-instance v0, Lcom/estrongs/android/ui/b/ey;

    invoke-direct {v0, p0}, Lcom/estrongs/android/ui/b/ey;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->l:Lcom/estrongs/a/a/k;

    iput-boolean p7, p0, Lcom/estrongs/android/ui/b/ew;->j:Z

    invoke-virtual {p0, p2}, Lcom/estrongs/android/ui/b/ew;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p5, p6}, Lcom/estrongs/android/ui/b/ew;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0312

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Lcom/estrongs/android/view/af;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/af;->d(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/af;->e(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, v5}, Lcom/estrongs/android/view/af;->c(I)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0006

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/ui/b/fp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/fp;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ew;Lcom/estrongs/android/ui/notification/e;)Lcom/estrongs/android/ui/notification/e;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ew;->t:Lcom/estrongs/android/ui/notification/e;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/estrongs/android/view/af;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/estrongs/android/view/af;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    invoke-virtual {v0}, Lcom/estrongs/android/view/af;->an()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/estrongs/android/ui/b/ew;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ew;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/estrongs/android/ui/b/ew;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/ui/b/ew;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/ew;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/ew;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->p:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/b/fg;

    invoke-direct {v1, p0, p1}, Lcom/estrongs/android/ui/b/fg;-><init>(Lcom/estrongs/android/ui/b/ew;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/ui/b/ew;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/ew;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/estrongs/android/ui/b/ew;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->o:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic d(Lcom/estrongs/android/ui/b/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ew;->f()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/ui/b/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ew;->g()V

    return-void
.end method

.method static synthetic f(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/view/af;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    return-object v0
.end method

.method private f()V
    .locals 6

    const v5, 0x7f0b02a5

    const v4, 0x7f0b003e

    const v1, 0x7f0b0022

    const/4 v3, 0x3

    const v2, 0x7f0b0007

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canPause()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canHide()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setMiddleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setLeftButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setRightButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->getTaskStatus()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->p:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    :goto_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->o:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v0}, Lcom/estrongs/a/a;->canHide()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setConfirmButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setCancelButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/widget/Button;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->f:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/estrongs/android/ui/b/ew;->setSingleButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1
.end method

.method private g()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ew;->i:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/o;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/i;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/at;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/ah;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/q;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/g;

    if-eqz v0, :cond_2

    :cond_0
    new-instance v0, Lcom/estrongs/android/ui/b/fq;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/estrongs/android/ui/b/fq;-><init>(Lcom/estrongs/android/ui/b/ew;Landroid/app/Activity;Ljava/lang/CharSequence;Lcom/estrongs/a/a;)V

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->t:Lcom/estrongs/android/ui/notification/e;

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/ui/b/ew;->t:Lcom/estrongs/android/ui/notification/e;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/estrongs/android/ui/b/ew;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/estrongs/android/ui/notification/e;

    iput-object v0, p0, Lcom/estrongs/android/ui/b/ew;->t:Lcom/estrongs/android/ui/notification/e;

    goto :goto_0
.end method

.method static synthetic g(Lcom/estrongs/android/ui/b/ew;)V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/ui/b/ew;->h()V

    return-void
.end method

.method static synthetic h(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/android/ui/notification/e;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->t:Lcom/estrongs/android/ui/notification/e;

    return-object v0
.end method

.method private h()V
    .locals 6

    const-wide/16 v4, 0x7d0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/estrongs/android/ui/b/ew;->g:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    new-instance v3, Lcom/estrongs/android/ui/b/ff;

    invoke-direct {v3, p0}, Lcom/estrongs/android/ui/b/ff;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sub-long v0, v4, v0

    goto :goto_0
.end method

.method static synthetic i(Lcom/estrongs/android/ui/b/ew;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ew;->k:Z

    return v0
.end method

.method static synthetic j(Lcom/estrongs/android/ui/b/ew;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/estrongs/android/ui/b/ew;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ew;->b:Z

    return v0
.end method

.method static synthetic l(Lcom/estrongs/android/ui/b/ew;)J
    .locals 2

    iget-wide v0, p0, Lcom/estrongs/android/ui/b/ew;->g:J

    return-wide v0
.end method

.method static synthetic m(Lcom/estrongs/android/ui/b/ew;)Lcom/estrongs/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->l:Lcom/estrongs/a/a/k;

    return-object v0
.end method

.method static synthetic n(Lcom/estrongs/android/ui/b/ew;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->m:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic o(Lcom/estrongs/android/ui/b/ew;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ew;->j:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/estrongs/android/ui/b/ew;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, p1, p2}, Lcom/estrongs/android/view/af;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/ui/b/ew;
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/b/ew;->h:Z

    return-object p0
.end method

.method protected a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b036f

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/ew;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/estrongs/a/p;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/estrongs/a/p;->b:Ljava/lang/Object;

    check-cast v0, Lcom/estrongs/a/q;

    iget-object v0, v0, Lcom/estrongs/a/q;->a:Ljava/lang/String;

    :goto_0
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02ca

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget v1, p1, Lcom/estrongs/a/p;->a:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b02cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Lcom/estrongs/a/a;)V
    .locals 1

    invoke-virtual {p1}, Lcom/estrongs/a/a;->canCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->dismiss()V

    invoke-virtual {p1}, Lcom/estrongs/a/a;->requestStop()V

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/estrongs/android/ui/b/ew;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/af;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)Lcom/estrongs/android/ui/b/ew;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    invoke-virtual {v0, p1}, Lcom/estrongs/android/view/af;->a(Z)V

    return-object p0
.end method

.method protected b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0370

    invoke-virtual {p0, v1}, Lcom/estrongs/android/ui/b/ew;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 3

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected c(Lcom/estrongs/a/a;)V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 2

    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->show()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/ew;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/estrongs/android/ui/b/ew;->g:J

    return-void
.end method

.method public dismiss()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/b/ew;->k:Z

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/estrongs/android/ui/b/ew;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    invoke-virtual {v1}, Lcom/estrongs/a/a;->getTaskId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->m:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_1
    :try_start_0
    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->q:Lcom/estrongs/android/view/af;

    iget-object v1, v1, Lcom/estrongs/android/view/af;->c:Lcom/estrongs/a/a/h;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeProgressListener(Lcom/estrongs/a/a/h;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    iget-object v1, p0, Lcom/estrongs/android/ui/b/ew;->l:Lcom/estrongs/a/a/k;

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->removeTaskStatusChangeListener(Lcom/estrongs/a/a/k;)V

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    instance-of v0, v0, Lcom/estrongs/fs/b/q;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->r:Lcom/estrongs/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/estrongs/a/a;->setTaskDecisionListener(Lcom/estrongs/a/a/a;)V

    :cond_3
    invoke-super {p0}, Lcom/estrongs/android/ui/b/ag;->dismiss()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lcom/estrongs/android/ui/b/ew;->d()V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/b/ew;->m:Landroid/content/DialogInterface$OnDismissListener;

    invoke-super {p0, p1}, Lcom/estrongs/android/ui/b/ag;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public show()V
    .locals 4

    iget-boolean v0, p0, Lcom/estrongs/android/ui/b/ew;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/b/fh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/fh;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/estrongs/android/ui/b/ew;->s:Landroid/os/Handler;

    new-instance v1, Lcom/estrongs/android/ui/b/fi;

    invoke-direct {v1, p0}, Lcom/estrongs/android/ui/b/fi;-><init>(Lcom/estrongs/android/ui/b/ew;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
