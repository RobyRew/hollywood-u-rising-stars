.class public Lcom/leanplum/activities/LeanplumSherlockActivity;
.super Lcom/actionbarsherlock/app/SherlockActivity;
.source "SourceFile"


# instance fields
.field private a:Lcom/leanplum/LeanplumActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockActivity;-><init>()V

    return-void
.end method

.method private a()Lcom/leanplum/LeanplumActivityHelper;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/leanplum/activities/LeanplumSherlockActivity;->a:Lcom/leanplum/LeanplumActivityHelper;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/leanplum/LeanplumActivityHelper;

    invoke-direct {v0, p0}, Lcom/leanplum/LeanplumActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/leanplum/activities/LeanplumSherlockActivity;->a:Lcom/leanplum/LeanplumActivityHelper;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/leanplum/activities/LeanplumSherlockActivity;->a:Lcom/leanplum/LeanplumActivityHelper;

    return-object v0
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Lcom/leanplum/Leanplum;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/leanplum/Leanplum;->isResourceSyncingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    :cond_0
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumSherlockActivity;->a()Lcom/leanplum/LeanplumActivityHelper;

    move-result-object v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leanplum/LeanplumActivityHelper;->getLeanplumResources(Landroid/content/res/Resources;)Lcom/leanplum/LeanplumResources;

    move-result-object v0

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/leanplum/Leanplum;->isTestModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/leanplum/Leanplum;->isResourceSyncingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    :cond_0
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockActivity;->setContentView(I)V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/leanplum/activities/LeanplumSherlockActivity;->a()Lcom/leanplum/LeanplumActivityHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leanplum/LeanplumActivityHelper;->setContentView(I)V

    goto :goto_0
.end method
