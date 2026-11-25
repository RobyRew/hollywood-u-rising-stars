.class public final Lcom/helpshift/da;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static d:Lcom/helpshift/ag;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/helpshift/al;

.field private c:Lcom/helpshift/dx;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 19
    const-string/jumbo v0, "HelpShiftDebug"

    iput-object v0, p0, Lcom/helpshift/da;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/helpshift/da;->e:Z

    .line 25
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/helpshift/da;->f:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    sget v1, Lcom/helpshift/k;->m:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 80
    sget v1, Lcom/helpshift/k;->n:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 81
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 84
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/helpshift/da;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->o:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/helpshift/db;

    invoke-direct {v3, p0}, Lcom/helpshift/db;-><init>(Lcom/helpshift/da;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 106
    const/4 v1, -0x3

    invoke-virtual {p0}, Lcom/helpshift/da;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->p:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/helpshift/dc;

    invoke-direct {v3, p0}, Lcom/helpshift/dc;-><init>(Lcom/helpshift/da;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    const/4 v1, -0x2

    invoke-virtual {p0}, Lcom/helpshift/da;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/helpshift/k;->q:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/helpshift/dd;

    invoke-direct {v3, p0}, Lcom/helpshift/dd;-><init>(Lcom/helpshift/da;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 135
    return-object v0
.end method

.method static synthetic a(Lcom/helpshift/da;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/da;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/helpshift/da;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/helpshift/da;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/helpshift/da;Lcom/helpshift/ef;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/helpshift/da;->a(Lcom/helpshift/ef;)V

    return-void
.end method

.method private a(Lcom/helpshift/ef;)V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/helpshift/da;->d:Lcom/helpshift/ag;

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/helpshift/da;->d:Lcom/helpshift/ag;

    invoke-interface {v0, p1}, Lcom/helpshift/ag;->a(Lcom/helpshift/ef;)V

    .line 73
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/helpshift/da;->d:Lcom/helpshift/ag;

    .line 74
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 48
    invoke-virtual {p0}, Lcom/helpshift/da;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/helpshift/da;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/helpshift/da;)Lcom/helpshift/dx;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/helpshift/da;->c:Lcom/helpshift/dx;

    return-object v0
.end method

.method static synthetic b(Lcom/helpshift/da;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/helpshift/da;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "later"

    invoke-static {v0}, Lcom/helpshift/br;->b(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/helpshift/ef;->c:Lcom/helpshift/ef;

    invoke-direct {p0, v0}, Lcom/helpshift/da;->a(Lcom/helpshift/ef;)V

    .line 58
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/helpshift/da;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    const-string/jumbo v2, "disableReview"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/helpshift/da;->e:Z

    .line 37
    const-string/jumbo v2, "rurl"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/helpshift/da;->f:Ljava/lang/String;

    .line 39
    :cond_0
    new-instance v1, Lcom/helpshift/al;

    invoke-direct {v1, v0}, Lcom/helpshift/al;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/helpshift/da;->b:Lcom/helpshift/al;

    .line 40
    iget-object v1, p0, Lcom/helpshift/da;->b:Lcom/helpshift/al;

    iget-object v1, v1, Lcom/helpshift/al;->a:Lcom/helpshift/dx;

    iput-object v1, p0, Lcom/helpshift/da;->c:Lcom/helpshift/dx;

    .line 41
    invoke-direct {p0, v0}, Lcom/helpshift/da;->a(Landroid/support/v4/app/FragmentActivity;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 63
    iget-boolean v0, p0, Lcom/helpshift/da;->e:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/helpshift/da;->b:Lcom/helpshift/al;

    invoke-virtual {v0}, Lcom/helpshift/al;->k()V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/helpshift/da;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 67
    return-void
.end method
