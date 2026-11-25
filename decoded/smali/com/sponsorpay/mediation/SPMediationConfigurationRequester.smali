.class public Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;
.super Lcom/sponsorpay/c/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sponsorpay/c/i",
        "<",
        "Lcom/sponsorpay/c/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ConfigurationRequester"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sponsorpay/c/i;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->a:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->b:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static requestConfig(Lcom/sponsorpay/a/a;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 1045
    const-string/jumbo v0, "config"

    invoke-static {v0}, Lcom/sponsorpay/c/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0, p0}, Lcom/sponsorpay/c/o;->a(Ljava/lang/String;Lcom/sponsorpay/a/a;)Lcom/sponsorpay/c/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sponsorpay/c/o;->b()Lcom/sponsorpay/c/o;

    move-result-object v0

    .line 41
    new-instance v1, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;

    invoke-virtual {p0}, Lcom/sponsorpay/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sponsorpay/c/o;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method


# virtual methods
.method protected getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "ConfigurationRequester"

    return-object v0
.end method

.method protected noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/c/aa;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic noConnectionResponse(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->noConnectionResponse(Ljava/lang/Throwable;)Lcom/sponsorpay/c/aa;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sponsorpay/c/aa;)V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/sponsorpay/mediation/SPMediationCoordinator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationCoordinator;

    iget-object v1, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sponsorpay/mediation/SPMediationCoordinator;->startMediationAdapters(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/sponsorpay/c/aa;

    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->onPostExecute(Lcom/sponsorpay/c/aa;)V

    return-void
.end method

.method protected parseSignedResponse(Lcom/sponsorpay/c/aa;)Lcom/sponsorpay/c/aa;
    .locals 4

    .prologue
    .line 81
    const-string/jumbo v1, ""

    .line 82
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->a:Landroid/app/Activity;

    const-string/jumbo v2, "ConfigurationRequester"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sponsorpay/c/aa;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->hasErrorStatusCode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->verifySignature(Lcom/sponsorpay/c/aa;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    const-string/jumbo v0, "ConfigurationRequester"

    const-string/jumbo v3, "The signature is valid, proceeding..."

    invoke-static {v0, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Lcom/sponsorpay/c/aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 93
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 94
    const-string/jumbo v3, "ConfigurationRequester"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 96
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    const-string/jumbo v1, "ConfigurationRequester"

    const-string/jumbo v3, "Server Side Configuration has been saved successfully."

    invoke-static {v1, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v1, v0

    .line 108
    :cond_0
    :goto_1
    invoke-static {v1}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    const-string/jumbo v0, "ConfigurationRequester"

    const-string/jumbo v1, "No configs from the server, fallback to cached version."

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v0, "ConfigurationRequester"

    const-string/jumbo v1, ""

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-static {v1}, Lcom/sponsorpay/c/n;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    const-string/jumbo v0, "ConfigurationRequester"

    const-string/jumbo v2, "There were no cached version to use."

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/sponsorpay/c/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1125
    invoke-static {v1}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->parseConfiguration(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1129
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 1132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1134
    sget-object v3, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-virtual {v3, v0}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->getConfigurationForAdapter(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 1137
    if-eqz v3, :cond_2

    .line 1138
    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1140
    :cond_2
    sget-object v3, Lcom/sponsorpay/mediation/SPMediationConfigurator;->INSTANCE:Lcom/sponsorpay/mediation/SPMediationConfigurator;

    invoke-virtual {v3, v0, v1}, Lcom/sponsorpay/mediation/SPMediationConfigurator;->setConfigurationForAdapter(Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_3

    .line 99
    :cond_3
    const-string/jumbo v1, "ConfigurationRequester"

    const-string/jumbo v3, "Failed to save Server Side Configuration."

    invoke-static {v1, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_4
    const-string/jumbo v0, "ConfigurationRequester"

    const-string/jumbo v3, "Invalid signature, those configs will not be used."

    invoke-static {v0, v3}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_5
    const-string/jumbo v0, "ConfigurationRequester"

    const-string/jumbo v2, "Using cached json file"

    invoke-static {v0, v2}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1144
    :cond_6
    const-string/jumbo v0, "ConfigurationRequester"

    const-string/jumbo v1, "There were no credentials to override"

    invoke-static {v0, v1}, Lcom/sponsorpay/c/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_7
    return-object p1

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method

.method protected bridge synthetic parseSignedResponse(Lcom/sponsorpay/c/aa;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/sponsorpay/mediation/SPMediationConfigurationRequester;->parseSignedResponse(Lcom/sponsorpay/c/aa;)Lcom/sponsorpay/c/aa;

    move-result-object v0

    return-object v0
.end method
