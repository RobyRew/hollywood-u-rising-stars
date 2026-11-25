.class final Lcom/leanplum/messagetemplates/v;
.super Lcom/leanplum/callbacks/VariablesChangedCallback;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/leanplum/ActionContext;


# direct methods
.method constructor <init>(Lcom/leanplum/messagetemplates/u;Lcom/leanplum/ActionContext;)V
    .locals 0

    .prologue
    .line 32
    iput-object p2, p0, Lcom/leanplum/messagetemplates/v;->a:Lcom/leanplum/ActionContext;

    invoke-direct {p0}, Lcom/leanplum/callbacks/VariablesChangedCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final variablesChanged()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/leanplum/messagetemplates/WebInterstitial;

    invoke-static {}, Lcom/leanplum/LeanplumActivityHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/leanplum/messagetemplates/WebInterstitialOptions;

    iget-object v3, p0, Lcom/leanplum/messagetemplates/v;->a:Lcom/leanplum/ActionContext;

    invoke-direct {v2, v3}, Lcom/leanplum/messagetemplates/WebInterstitialOptions;-><init>(Lcom/leanplum/ActionContext;)V

    invoke-direct {v0, v1, v2}, Lcom/leanplum/messagetemplates/WebInterstitial;-><init>(Landroid/app/Activity;Lcom/leanplum/messagetemplates/WebInterstitialOptions;)V

    .line 38
    invoke-virtual {v0}, Lcom/leanplum/messagetemplates/WebInterstitial;->show()V

    .line 39
    return-void
.end method
