
import MSAL

// swiftlint:disable file_length
class LibraryViewController: UIViewController {

    
    var nativeAuth: MSALNativeAuthPublicClientApplication!
    var verifyCodeViewController: VerifyCodeViewController?
    var accountResult: MSALNativeAuthUserAccountResult?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        do {
            nativeAuth = try MSALNativeAuthPublicClientApplication(
                clientId: Configuration.clientId,
                tenantSubdomain: Configuration.tenantSubdomain,
                challengeTypes: [.OOB]
            )
        } catch {
            
            // TBD: user friendly error message
            print("Unable to initialize MSAL \(error)")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        retrieveCachedAccount()
    }
    
    func updateUI() {
        
    }
    
    func retrieveCachedAccount() {
                
        accountResult = nativeAuth.getNativeAuthUserAccount()
        if let accountResult = accountResult, let homeAccountId = accountResult.account.homeAccountId?.identifier {
            print("Account found in cache: \(homeAccountId)")
            
            // The getAccessToken(delegate) accepts a delegate parameter and we must implement the required CredentialsDelegate method.
            accountResult.getAccessToken(delegate: self)
        } else {
            print("No account found in cache")
            
            accountResult = nil
    
            updateUI()
        }
    }
}

extension LibraryViewController: CredentialsDelegate {
    
    // In the most common scenario, you receive a call to this method indicating
    // that the user obtained an access token.
    func onAccessTokenRetrieveCompleted(result: MSALNativeAuthTokenResult) {
        
        // MSAL returns the access token, scopes and expiration date for the access token for the account.
        print("Access Token: \(result.accessToken)")
        
  
        // Update the UI that the user signed-in
        updateUI()
    }
    
    // MSAL notifies the delegate that the sign-in operation resulted in an error.
    func onAccessTokenRetrieveError(error: MSAL.RetrieveAccessTokenError) {
        
        // TBD: user friendly error message
        print("Error retrieving access token: \(error.errorDescription ?? "No error description")")
    }
}

