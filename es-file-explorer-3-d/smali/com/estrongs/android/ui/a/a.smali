.class public Lcom/estrongs/android/ui/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:Landroid/graphics/drawable/Drawable;

.field b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/view/View$OnClickListener;

.field public e:Z

.field public f:Z

.field public g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/a;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/estrongs/android/ui/a/a;->f:Z

    iput-object p1, p0, Lcom/estrongs/android/ui/a/a;->a:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/estrongs/android/ui/a/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/estrongs/android/ui/a/a;->d:Landroid/view/View$OnClickListener;

    iput-object p4, p0, Lcom/estrongs/android/ui/a/a;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p4, v0}, Lcom/estrongs/android/ui/a/a;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/estrongs/android/ui/a/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)Lcom/estrongs/android/ui/a/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/a;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/estrongs/android/ui/a/a;
    .locals 0

    iput-object p1, p0, Lcom/estrongs/android/ui/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/estrongs/android/ui/a/a;
    .locals 0

    iput-boolean p1, p0, Lcom/estrongs/android/ui/a/a;->f:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/estrongs/android/ui/a/a;->h:Ljava/lang/String;

    return-object v0
.end method
