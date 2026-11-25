.class public Lcom/leanplum/messagetemplates/WebInterstitialOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method protected constructor <init>(Lcom/leanplum/ActionContext;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string/jumbo v0, "URL"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    iput-object v0, p0, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->a:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "Has dismiss button"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->booleanNamed(Ljava/lang/String;)Z

    move-result v0

    .line 1039
    iput-boolean v0, p0, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->c:Z

    .line 23
    const-string/jumbo v0, "Close URL"

    invoke-virtual {p1, v0}, Lcom/leanplum/ActionContext;->stringNamed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1047
    iput-object v0, p0, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->b:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static toArgs(Landroid/content/Context;)Lcom/leanplum/ActionArgs;
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/leanplum/ActionArgs;

    invoke-direct {v0}, Lcom/leanplum/ActionArgs;-><init>()V

    const-string/jumbo v1, "URL"

    const-string/jumbo v2, "http://www.example.com"

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Close URL"

    const-string/jumbo v2, "http://leanplum:close"

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    const-string/jumbo v1, "Has dismiss button"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/leanplum/ActionArgs;->with(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/ActionArgs;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCloseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->a:Ljava/lang/String;

    return-object v0
.end method

.method public hasDismissButton()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/leanplum/messagetemplates/WebInterstitialOptions;->c:Z

    return v0
.end method
